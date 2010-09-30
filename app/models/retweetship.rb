class Retweetship < ActiveRecord::Base
  validates_presence_of  :user_name, :retweeter_name, :frequency
  validates_inclusion_of :frequency, :in => [4, 8, 12, 24, 48]
end
