 class CreateCaronaUserJoinTable < ActiveRecord::Migration
  def change
    create_table :caronas_users, :id => false do |t|
      t.integer :carona_id
      t.integer :user_id
    end
  end
end
