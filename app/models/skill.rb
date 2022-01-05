class Skill < ApplicationRecord
  has_many :users, through: :user_skills
  # has_many :offer_skills

  validates :name, presence: true
end
