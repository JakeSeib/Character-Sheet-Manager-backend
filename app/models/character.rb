class Character < ApplicationRecord
  belongs_to :user
  has_many :character_skills, dependent: :destroy
  has_many :skills, through: :character_skills
end
