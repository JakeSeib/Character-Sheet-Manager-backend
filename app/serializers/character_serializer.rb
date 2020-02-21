class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :high_concept, :trouble, :aspect_1, :aspect_2, :aspect_3
end
