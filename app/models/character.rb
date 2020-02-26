class Character < ApplicationRecord
  belongs_to :user
  has_many :character_skills, dependent: :destroy
  has_many :skills, through: :character_skills

  def skill_level
    character_skills.reduce(0) do |total, char_skill|
      total + char_skill.level
    end
  end
end
