class Order < ApplicationRecord
  belongs_to :user

  has_many :order_dishes
  has_many :tables
end
