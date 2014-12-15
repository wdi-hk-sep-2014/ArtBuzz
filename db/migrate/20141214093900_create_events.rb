class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :artist
      t.string :title
      t.date :open
      t.time :time
      t.date :close

      t.timestamps
    end
  end
end
