class Tweet < ActiveRecord::Base

  def deliver
    sleep 10
    update_attribute(:delivered_at, Time.now)
  end
  
  validates_length_of :tweet, :maximum => 160
  validates_presence_of :tweet
end
