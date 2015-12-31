class AddAnswerOwner < ActiveRecord::Migration
  def change
    add_column :answers, :owner, :string
  end
end
