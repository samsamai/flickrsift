require 'flickr-objects'

class SearchesController < ApplicationController
  PER_PAGE = 20
  
  def show
    return if !params[:keywords].present?

    @keywords = params[:keywords]
    @page = params[:page]
  
    respond_to do |format|
        format.html {
          @photos = Flickr.photos.search(tags: @keywords, page: @page, per_page: PER_PAGE)
        }
        format.js { 
        }
    end
  end

end
