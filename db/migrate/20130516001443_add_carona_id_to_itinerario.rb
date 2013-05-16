class AddCaronaIdToItinerario < ActiveRecord::Migration
  def change
    add_column :itinerarios, :carona_id, :integer
  end
end
