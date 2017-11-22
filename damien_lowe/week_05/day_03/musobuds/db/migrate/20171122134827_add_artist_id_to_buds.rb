class AddArtistIdToBuds < ActiveRecord::Migration[5.1]
  def change
    add_column :buds, :artist_id, :integer
  end
end
