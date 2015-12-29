class CreateCommands < ActiveRecord::Migration
  def change
    create_table :commands do |t|
      t.datetime :date, null: false
      t.string :description, null: false
      t.datetime :limit_date
      t.string :payment
      t.string :state, null: false
      t.decimal :total, precision: 8, scale: 2

      t.timestamps null: false
    end
  end
end
