class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :high_concept
      t.string :trouble
      t.string :aspect_1
      t.string :aspect_2
      t.string :aspect_3

      t.timestamps
    end
  end
end
