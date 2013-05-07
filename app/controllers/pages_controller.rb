require 'flickraw'
class PagesController < ApplicationController
  FLICKR_USER_ID='95255902@N05' 
  def home
end

  def about
  end

  def snagging_images
        FlickRaw.api_key="20b3d4317f2569c5f0a49040f229cf6f"
        FlickRaw.shared_secret="98e7c8faff9dbd99"

        FLICKR_USER_ID

        info = flickr.photos.getInfo(:photo_id => "8706241131")
        @photo = FlickRaw.url_b(info)

        # info = flickr.photos.getInfo(:photo_id => "8702627447")
        # @photo = FlickRaw.url_photopage(info) # => "http://www.flickr.com/photos/41650587@N02/3839885270"

        # info = flickr.photos.getInfo(:photo_id => "8702627447")
        # @photo = FlickRaw.url_photostream(info)

         #getPhotos = flickr.photosets.getPhotos(:photo_set => "72157633406435974")
        # FlickRaw.url_photosets(getPhotos)  # => "http://www.flickr.com/photos/95255902@N05/sets/72157633406435974/"
    end

  def services
  end

  def portfolio
    snagging_images
  end

  def fees
  end
end
