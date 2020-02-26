class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :high_concept, :trouble, :aspect_1, :aspect_2,
             :aspect_3, :skill_level
  # has_one :user
  # has_many :skills
  has_many :character_skills
end
