class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :address
      t.string :district
      t.string :hours

      t.timestamps
    end
  end
end
