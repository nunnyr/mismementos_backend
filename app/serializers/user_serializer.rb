class UserSerializer < ActiveModel::Serializer
<<<<<<< HEAD
  attributes :id, :username, :password, :avatar, :bio, :city, :state, :zipcode
=======
  attributes :id, :username, :avatar, :bio, :city, :state, :zipcode
>>>>>>> c26c69ccdce324ecc7cbba86ec9775bdf50bfe87
  has_many :memories
end
