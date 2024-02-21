class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: CATEGORY, message: "That is not type of restaurant we work with yet."}
end

