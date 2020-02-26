class CharacterSkillSerializer < ActiveModel::Serializer
  attributes :id, :level, :skill_name, :skill_id
  has_one :character
  has_one :skill
end
