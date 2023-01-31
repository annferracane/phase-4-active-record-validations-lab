class Author < ApplicationRecord
    validates :name, presence: true
    validates :name, uniqueness: true
    validates :phone_number, length: { minimum: 2 }
end
