class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :bio, :city, :state
  has_many :memories
end
