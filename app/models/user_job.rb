class UserJob < ApplicationRecord
  belongs_to :user
  belongs_to :job
  validates :experience, presence: true, numericality: { greater_than: 0 }
end
