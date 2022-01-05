class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  LEVEL = [1, 2, 3, 4, 5]
  validates :level, presence: true
end
