class UserAnswer < ApplicationRecord
  belongs_to :feedback
  belongs_to :answer
end
