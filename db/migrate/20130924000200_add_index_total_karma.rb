class AddIndexTotalKarma < ActiveRecord::Migration
  def up
    add_index :users, :total_karma, name: "total_karma_ix" 
  end

  def down
    remove_index :users, :total_karma
  end
end
