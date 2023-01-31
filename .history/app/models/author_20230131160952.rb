class Author < ApplicationRecord
    validates: :name, presence :true
    validates: :name, unique :true
end
