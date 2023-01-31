class Post < ApplicationRecord
    validates :title, presence: true 
    validates :content, length: { minimum: 250}
    validates :
end
