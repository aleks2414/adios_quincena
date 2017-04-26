class ApplicationController < ActionController::Base

layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller?
      "vacio"
    end
  end
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  before_action :prepare_meta_tags, if: "request.get?"

  def prepare_meta_tags(options={})
    site_name   = "Adios Quincena"
    title       = site_name
    description = "El único luagr donde encuentras regalos geniales. nunca te cansarás de ver esta lista infinita de regalos de todo tipo"
    image       = options[:image] || "http://www.adiosquincena.com/assets/logo-24bc1ee28e5aaa9b90d0652e32f89c917ef3eaca9092277d52725206cc93dcce.png"
    current_url = request.url

    # Let's prepare a nice set of defaults
    defaults = {
      site:        site_name,
      title:       title,
      image:       image,
      description: description,
      keywords:    %w[regalos caricaturas adios_quincena mascotas series películas videojuegos libros],
      twitter: {
        site_name: site_name,
        site: '@adiosquincena',
        card: 'summary',
        description: description,
        image: image
      },
      og: {
        url: current_url,
        site_name: site_name,
        title: title,
        image: image,
        description: description,
        type: 'website'
      }
    }

    options.reverse_merge!(defaults)

    set_meta_tags options
  end
  # ...

  protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name) }
  devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :current_password, :name) }
end
end
