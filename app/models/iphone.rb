class Iphone < ApplicationRecord

  has_many :reviews, dependent: :destroy

  validates :title, presence: true, length: {minimum: 2}
  validates :body, presence: true, length: {minimum: 5}
  validates :img, presence: true, length: {minimum: 5}
  validates :price, presence: true, length: {minimum: 2}
  
end
