class Category < ApplicationRecord
  has_many :dishes, dependent: :destroy
  validates :name, presence: true, length: { maximum: 100 }
end
