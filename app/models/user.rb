class User < ApplicationRecord
    validates :last_name, presence: true,
        length: { minimum: 5 }
    validates :first_name, presence: true,
        length: { minimum: 5 }
    validates :email, presence: true,
        length: { minimum: 5 }
end
