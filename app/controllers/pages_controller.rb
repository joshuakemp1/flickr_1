class PagesController < ApplicationController

include PhotoGrabber::PhotoRetriever
 
def home

@latest = Portfolio.last_three_photos
end

def about

end

  
def services
  
end

def portfolio
  @portfolio = Portfolio.all 
end

  
end
