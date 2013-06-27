class PagesController < ApplicationController

include PhotoGrabber::PhotoRetriever
 
def home

end

def about

end

  
def services
  
end

def portfolio
  @portfolio = Portfolio.all 
end

  
end
