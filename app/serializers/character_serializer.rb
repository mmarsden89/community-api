class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_name, :x, :y, :direction, :moving, :active
end
