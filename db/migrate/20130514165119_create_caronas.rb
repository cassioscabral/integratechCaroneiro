class CreateCaronas < ActiveRecord::Migration
  def change
    create_table :caronas do |t|
      t.time :hora_ida
      t.time :hora_volta
      t.integer :limite_pessoas
      t.float :valor_por_pessoa

      t.timestamps
    end
  end
end
