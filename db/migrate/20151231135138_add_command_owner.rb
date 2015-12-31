class AddCommandOwner < ActiveRecord::Migration
  def change
    add_column :commands, :owner, :string
  end
end
