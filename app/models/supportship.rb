class Supportship < ActiveRecord::Base
  def user=(id)
    user_id = id
  end

  def supporter=(id)
    supporter_id = id
  end
 
  #validates_inclusion_of :frequency, :in => %w(4 8 12 24 48)
  
  def verify_uniqueness
    ! Supportship.where(:user_id => user_id).and(:supporter_id => :supporter_id).empty?
  end
end
