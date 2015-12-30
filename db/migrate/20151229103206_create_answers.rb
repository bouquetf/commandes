class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.string :nickname
      t.string :order
      t.decimal :amount
      t.decimal :payed
      t.references :command, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
