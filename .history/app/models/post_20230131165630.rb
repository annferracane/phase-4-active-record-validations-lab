class Post < ApplicationRecord
    validates :title, presence: true 
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category" }


    def title_sufficient
        unless ["Won't Believe","Secret", "Top","Guess"].any? { |phrase| title.include?(phrase) } 
            errors.add(:title, "Title must be more click-baity")
        end 
       

        #"Top [number]"

        is_this_valid = 
        byebug
    end
end
