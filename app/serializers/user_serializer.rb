class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :bio, :city, :state, :zipcode
  has_many :memories
end
