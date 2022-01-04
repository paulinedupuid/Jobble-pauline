class Offer < ApplicationRecord
  belongs_to :job
  belongs_to :user
  has_many :matches
  has_many :offer_skills
end
