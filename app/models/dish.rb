class Dish < ApplicationRecord
  has_many :order_dishes
  has_many :comments

  belongs_to :category
end
