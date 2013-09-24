class KarmaPoint < ActiveRecord::Base
  attr_accessible :user_id, :label, :value, :created_at, :updated_at
  belongs_to :user

  validates :user, :presence => true
  validates :value, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :label, :presence => true

  after_create :sum_karma

  def sum_karma
    current_user = self.user 
    current_user.update_attribute(:total_karma, user.karma_points.sum(:value))
    current_user.save
  end

end

