class User < ApplicationRecord
  has_many :orders
  has_many :reviews
  has_many :comments
  has_many :feedbacks
end
