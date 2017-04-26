class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :filter_admin!, only: [:new, :edit]
  impressionist :actions=>[:show,:index]

  def search
    if params[:search].present?
      @posts = Post.search(params[:search])
    else
      @posts = Post.all
      @posts = @posts.page params[:page]
    end

  end

 

  def favorites
    @posts = current_user.find_up_voted_items
  end



  # GET /posts
  # GET /posts.json
def index

  if params[:tag]
  @posts = Post.tagged_with(params[:tag])
elsif params[:category]
    @category_id = Category.find_by(name: params[:category]).id
    @posts = Post.where(category_id: @category_id).order("created_at DESC")
elsif params[:subcategory]
    @subcategory_id = Subcategory.find_by(name: params[:subcategory]).id
    @posts = Post.where(subcategory_id: @subcategory_id).order("created_at DESC")
else
    @posts = Post.all.order("created_at DESC")
end


  @posts = @posts.page params[:page]
end




  # GET /posts/1
  # GET /posts/1.json
  def show
    @posts = Post.find(params[:id])
    @related_posts = Post.tagged_with(@posts.tag_list, any: true).limit(6)

    prepare_meta_tags(title: @post.title,
                      description: @post.description.truncate(50), 
                      keywords: @post.tag_list.join(" "),
                      image: @post.image
      )

    render layout: "else"
  end

  # GET /posts/new
  def new
    @post = Post.new
    render layout: "vacio"
  end

  # GET /posts/1/edit
  def edit
    render layout: "vacio"
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /posts/1
  # PATCH/PUT /posts/1.json
  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post.destroy
    respond_to do |format|
      format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

def filter_admin!
 authenticate_user!
 redirect_to root_path, alert: "No tienes acceso" unless current_user.admin?
end


def upvote 
  @post = Post.find(params[:id])
  @post.liked_by current_user
  redirect_to :back
end  

def downvote
  @post = Post.find(params[:id])
  @post.downvote_from current_user
  redirect_to :back
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post
      @post = Post.friendly.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def post_params
      params.require(:post).permit(:title, :description, :date, :user_id, :category_id, :subcategory_id, :image, :favorite, :url, :tag_list, :slug, :pro1, :pro2, :pro3, :pro4, :pro5, :con1, :con2, :con3, :con4, :con5, :link_review, :amazon, :calidad, :garantia, :precio, :innovacion, :calificacion, :price)
    end
end
