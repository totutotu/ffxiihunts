class User < ActiveRecord::Base

  validates :username, uniqueness: true,
            length: { minimum: 3 }
end
