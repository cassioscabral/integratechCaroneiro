class AddUserIdToPerfis < ActiveRecord::Migration
  def change
    add_column :perfis, :user_id, :integer
  end
end
