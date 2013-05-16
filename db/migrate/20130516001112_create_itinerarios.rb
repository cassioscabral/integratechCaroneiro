class CreateItinerarios < ActiveRecord::Migration
  def change
    create_table :itinerarios do |t|
      t.float :latitude
      t.float :longitude
      t.float :ponto_inicial
      t.float :ponto_final
      t.text :observacao

      t.timestamps
    end
  end
end
