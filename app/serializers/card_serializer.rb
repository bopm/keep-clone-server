class CardSerializer < ActiveModel::Serializer
  attributes :id, :text, :pinned
end
