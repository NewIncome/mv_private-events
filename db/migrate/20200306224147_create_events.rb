class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.integer :creator_id
      t.datetime :date
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
