class User < ApplicationRecord
    has_many :memories
    has_secure_password
end
