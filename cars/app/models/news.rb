class News < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
end
