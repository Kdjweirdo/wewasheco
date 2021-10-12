class User < ActiveRecord::Base
    validates :email, presence: true,
    uniqueness :true,
    length: {minimum: 3, maximum: 25}
end