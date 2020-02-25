class CreateCharacterSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :character_skills do |t|
      t.integer :level, null: false
      t.references :character, foreign_key: true, null: false
      t.references :skill, foreign_key: true, null: false

      t.timestamps
    end
  end
end
