class Dish < ApplicationRecord
  has_many :order_dishes, dependent: :destroy
  has_many :comments, dependent: :destroy

  belongs_to :category
end
