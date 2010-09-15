class Tweet < ActiveRecord::Base
  validates_length_of :tweet, :maximum => 160
  validates_presence_of :tweet
  validates_uniqueness_of :tweet
end
