class PagesController < ApplicationController

include Photo::PhotoRetriever
 
def home

end

def about

end

  
def services
  
end

def portfolio
  snagging_images
end

  
end
