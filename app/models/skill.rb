class Skill < ApplicationRecord
  has_many :character_skills, dependent: :destroy
  has_many :characters, through: :character_skills

  def display_name
    name.capitalize
  end
end
