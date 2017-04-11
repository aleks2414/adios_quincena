# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  subcat = $('#subcategory-select').html()
  $('#category-select').change ->
    cat = jQuery('#category-select').children('option').filter(':selected').text()
    options = $(subcat).filter("optgroup[label='#{cat}']").html()
    if options
      $('#subcategory-select').html(options)
    else
      $('#subcategory-select').empty()