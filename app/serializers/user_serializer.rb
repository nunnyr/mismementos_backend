class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password_digest, :avatar, :bio, :city, :state
end
