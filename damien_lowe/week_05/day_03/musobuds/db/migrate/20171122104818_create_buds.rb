class CreateBuds < ActiveRecord::Migration[5.1]
  def change
    create_table :buds do |t|
      t.text :name
      t.text :strain
      t.text :ancestors
      t.integer :THC
      t.integer :CBD
      t.text :image
      t.timestamps
    end
  end
end
