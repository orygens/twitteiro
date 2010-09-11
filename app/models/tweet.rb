class Tweet
  include Mongoid::Document
  
  field :tweet, :type => String
  validates_length_of :tweet, :maximum => 160
  validates_presence_of :tweet
  validates_uniqueness_of :tweet
end
