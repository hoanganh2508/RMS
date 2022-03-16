class Dish < ApplicationRecord
  has_many :order_dishes, dependent: :destroy
  has_many :comments, dependent: :destroy

  belongs_to :category

  has_one_attached :image

  validates :name, presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 5000 }

  def display_image
    image.variant(resize_to_limit: [80, 90])
  end
end
