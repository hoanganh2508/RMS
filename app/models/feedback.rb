class Feedback < ApplicationRecord
  belongs_to :user

  has_many :user_answers
end
