class CommentSerializer < ActiveModel::Serializer
  attributes :id, :author, :body
end
