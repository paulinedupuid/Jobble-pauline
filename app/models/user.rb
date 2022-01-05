class User < ApplicationRecord
  has_many :messages
  has_many :user_jobs
  has_many :user_skills
  has_many :skills, through: :user_skills
  has_many :offers
  has_many :matches
  # pour les choix dans les form
  RECRUTOR = {oui: true, non: false}
  GENDER = ['homme', 'femme']
  ##
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :timeoutable
end
