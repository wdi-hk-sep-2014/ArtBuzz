class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :artist
      t.date :date
      t.time :time
      t.references :venue

      t.timestamps
    end
  end
end
