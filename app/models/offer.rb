class Offer < ApplicationRecord
  belongs_to :job
  belongs_to :user
  has_many :matches, dependent: :destroy
  has_many :offer_skills, dependent: :destroy

  validates :title, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { in: 20..1200 }
  validates :location, presence: true
  validates :salary, presence: true
end
