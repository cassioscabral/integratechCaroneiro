class AddOwnerToCaronas < ActiveRecord::Migration
  def change
    add_column :caronas, :owner, :integer
  end
end
