class PostSerializer < ActiveModel::Serializer
  attributes :id, :author, :body
  has_many :comments
end