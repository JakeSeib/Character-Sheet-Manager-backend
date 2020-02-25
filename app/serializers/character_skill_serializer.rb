class CharacterSkillSerializer < ActiveModel::Serializer
  attributes :id, :level, :skill_name
  has_one :character
  has_one :skill

  def skill_name
    object.skill.name.capitalize()
  end
end
