class BlogSerializer < ActiveModel::Serializer
  attributes :id, :author, :title
  has_many :posts
end
