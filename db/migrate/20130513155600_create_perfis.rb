class CreatePerfis < ActiveRecord::Migration
  def change
    create_table :perfis do |t|
      t.string :nome_exibicao
      t.integer :idade
      t.string :cidade
      t.string :bairro
      t.boolean :trabalha
      t.string :perfil_facebook

      t.timestamps
    end
  end
end
