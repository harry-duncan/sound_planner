class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :name
      t.string :date
      t.integer :ticket_price
      t.string :description

      t.timestamps null: false
    end
  end
end
