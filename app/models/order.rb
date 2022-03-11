class Order < ApplicationRecord
  belongs_to :user

  has_many :order_dishes, dependent: :destroy
  has_many :order_tables, dependent: :destroy
end
