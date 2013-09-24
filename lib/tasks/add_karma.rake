namespace :db do
desc "Totals the karma for all users"
    task :sum_karma => :environment do
    User.all.each do |user|
      user.update_attribute(:total_karma, user.karma_points.sum(:value))
    end
  end
end
