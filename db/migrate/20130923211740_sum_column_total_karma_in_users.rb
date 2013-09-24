class SumColumnTotalKarmaInUsers < ActiveRecord::Migration
  def up
    User.all.each do |user|
      puts user.id
      user.update_attribute(:total_karma, user.karma_points.sum(:value))
    end
  end

  def down
    User.all.each do |user|
      user.update_attribute(:total_karma, 0)
    end
  end
end
