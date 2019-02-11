class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.datetime :start_date
      t.integer :duration
      t.string :title
      t.text :decription
      t.integer :price
      t.string :location
      t.timestamps
    end
  end
end
