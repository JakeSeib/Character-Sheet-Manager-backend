class CharacterSkill < ApplicationRecord
  belongs_to :character
  belongs_to :skill
  # Not required for ownership macros in character_skills_controller.rb, but
  # could be implemented if reverse direction is ever desired
  # has_one :user, through: :character
end
