class CreateHunts < ActiveRecord::Migration
  def change
    create_table :hunts do |t|
      t.string :name
      t.string :steal
      t.string :string
      t.string :strategy
      t.string :level

      t.timestamps null: false
    end
  end
end
