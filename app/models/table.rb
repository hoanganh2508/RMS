class Table < ApplicationRecord
  has_many :order_tables
  validates :name, presence: true, length: { maximum: 30 }
end
