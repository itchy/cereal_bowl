class Post < ActiveRecord::Base
  attr_accessible :author, :blog_id, :body, :tags
  belongs_to :blog
  has_many :comments
  
  def response
    {fields: [:author, :body] }
  end
  
end
