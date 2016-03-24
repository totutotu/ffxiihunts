class RemoveStringFromHunt < ActiveRecord::Migration
  def change
    remove_column :hunts, :string, :string
  end
end
