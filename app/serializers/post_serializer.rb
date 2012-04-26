class PostSerializer < ActiveModel::Serializer
  embed :ids, :include => true
  
  attributes :id, :author, :body
  has_many :comments
end