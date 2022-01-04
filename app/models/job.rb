class Job < ApplicationRecord
  has_many :user_jobs
  has_many :offers

  validates :name, presence: true
end
