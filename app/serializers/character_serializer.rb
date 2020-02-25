class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :high_concept, :trouble, :aspect_1, :aspect_2, :aspect_3, :skill_level
  has_one :user

  def skill_level
    object.character_skills.reduce(0) do |total, char_skill|
      total + char_skill.level
    end
  end
end
