class Author < ApplicationRecord
    validates :name, presence: true
    validate: :name, uniqueness: true
end
