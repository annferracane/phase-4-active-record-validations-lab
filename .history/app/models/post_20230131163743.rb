class Post < ApplicationRecord
    validates :title, presence: true 
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction), message: "%{value} is not a valid category" }


    def title_sufficient
        # unless title.match?(/flatironschool.com/)
        #     errors.add(:email, "We're only allowed to have people who work for the company in the database!")
        # end 
       

        #"Top [number]"

        is_this_valid ["Won't Believe","Secret","Guess"].any? { |phrase| title.include?(phrase) }   
        byebug
    end
end
