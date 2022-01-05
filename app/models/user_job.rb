class UserJob < ApplicationRecord
  belongs_to :user
  belongs_to :job
    EXPERIENCE = [1, 2, 3, 4, 5]
  validates :experience, presence: true
end
