class PagesController < ApplicationController
  def home
end

  def about
  end

  def services
  end

  def portfolio

  def index
@photosets = flickr.photosets.getPhotos(:photo_set => "72157633406435974")
FlickRaw.url_photosets(getPhotos) #=> "http://www.flickr.com/photos/95255902@N05/sets/72157633406435974/"
  end
end

  def fees
  end
end
