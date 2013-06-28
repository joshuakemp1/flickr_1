class Portfolio < ActiveRecord::Base
  attr_accessible :taken, :title, :url, :url_large

  scope :last_three_photos, -> {order('taken desc').limit(3) }
end
