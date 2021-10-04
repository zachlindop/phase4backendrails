class GameSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :system, :year, :rating, :user_id
end
