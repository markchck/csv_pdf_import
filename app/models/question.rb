class Question < ApplicationRecord
    has_one_attached :image
    has_many :scores
    has_many :scored_users, through: :scores, source: :user
end
