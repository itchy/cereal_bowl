class Blog < ActiveRecord::Base
  attr_accessible :author, :title
  has_many :posts
end
