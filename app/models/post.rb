class Post < ApplicationRecord
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
    validate :custom_validations
     
    def custom_validations
        if title == "True Facts"
            errors.add(:title, "Invalid title")
        end
    end

end
