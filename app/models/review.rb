class Review < ApplicationRecord
  belongs_to :iphone

  validates :author, presence: true, length: {minimum: 2}
  validates :body, presence: true, length: {minimum: 5}
  validates :rating, presence: true, length: {minimum: 1}
end
