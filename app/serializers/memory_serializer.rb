class MemorySerializer < ActiveModel::Serializer
  attributes :id, :title, :about, :address, :city, :state, :zipcode
  # has_one :user
  has_many :notes
end
