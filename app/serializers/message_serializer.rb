class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_name, :text
end
