require 'flickr-objects'

class SearchesController < ApplicationController
  PER_PAGE = 20
  
  # this is the main searcgh page
  def show
    # dont do anything if no keywords givens
    return if !params[:keywords].present?

    @keywords = params[:keywords]
    @page = params[:page]
  
    respond_to do |format|
        format.html {
          # talk to flicker and get some photos back
          @photos = Flickr.photos.search(tags: @keywords, page: @page, per_page: PER_PAGE)
        }
        format.js { 
        }
    end
  end

end
