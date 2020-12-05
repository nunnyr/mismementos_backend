class NoteSerializer < ActiveModel::Serializer
  attributes :id, :reflection
  # has_one :memory
end
