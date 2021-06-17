class Tweet < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    validates :author, uniqueness: true
    validates :author, presence: true 
end