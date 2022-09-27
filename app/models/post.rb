class Post < ApplicationRecord
    # The title cannot be blank
    # The category is either "Fiction" or "Non-Fiction"
    # The content is at least 100 characters long
    validates :title, presence: true 
    validates :content, length: { minimum: 100 }
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction']}

end
