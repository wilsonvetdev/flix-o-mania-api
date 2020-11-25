class MovieSerializer < ActiveModel::Serializer
  attributes :id, :movie_id, :name, :like, :dislike
end
