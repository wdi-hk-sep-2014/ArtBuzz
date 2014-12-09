class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :artist
      t.date :date
      t.datetime :time

      t.timestamps
    end
  end
end
