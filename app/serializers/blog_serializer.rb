class BlogSerializer < ActiveModel::Serializer
  embed :ids
  
  attributes :id, :author, :title
  has_many :posts
end
