class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.text :name
      t.text :instrument
      t.text :genre
      t.text :nationality
      t.date :birth
      t.date :death
      t.text :image
      t.timestamps
    end
  end
end
