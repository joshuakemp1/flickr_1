class FlickrController < ApplicationController
  #require 'active_support'
  require 'active_support/core_ext/hash'
  require 'net/http'
  require 'json'
  FLICKR_USER_ID = ''
  res = Net::HTTP.get('api.flickr.com',"/services/feeds/photos_public.gne?id=#{FLICKR_USER_ID}")
  res_hash = Hash.from_xml(res)
  res_hash["feed"]["entry"].each do |image|
    puts image["link"][1]["href"]
end
















require 'flickraw'

FlickRaw.api_key="20b3d4317f2569c5f0a49040f229cf6f"
FlickRaw.shared_secret="98e7c8faff9dbd99"

FLICKR_USER_ID = '95255902@N05' 

getPhotos = flickr.photosets.getPhotos(:photo_set => "72157633406435974")
FlickRaw.url_photosets(getPhotos) => "http://www.flickr.com/photos/95255902@N05/sets/72157633406435974/"








