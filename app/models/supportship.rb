class Supportship < ActiveRecord::Base
  validates_presence_of  :user_name, :supporter_name, :frequency
  validates_inclusion_of :frequency, :in => [4, 8, 12, 24, 48]

  def user=(id)
    user_id = id
  end

  def supporter=(id)
    supporter_id = id
  end
 
  def verify_uniqueness
    ! Supportship.where(:user_id => user_id).and(:supporter_id => :supporter_id).empty?
  end
end
