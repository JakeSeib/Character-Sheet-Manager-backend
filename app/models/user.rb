# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :characters, dependent: :destroy
  has_many :character_skills, through: :characters
end
