class AddIndexForUser < ActiveRecord::Migration
  def self.up
    add_index :karma_points, :user_id, name: 'user_id_ix'
  end

  def self.down
    remove_index :karma_points, :user_id
  end
end
