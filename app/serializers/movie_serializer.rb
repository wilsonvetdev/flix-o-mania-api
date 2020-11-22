class MovieSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :name, :picture, :like, :dislike
end
