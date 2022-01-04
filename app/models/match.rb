class Match < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  validates :candidate_status, presence: true
  validates :recrutor_status, presence: true
end
