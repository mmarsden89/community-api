class MessageSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :text, :user_name

  def editable
    scope == object.user
  end
end
