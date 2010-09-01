class Usuario
  include Mongoid::Document
  
  def to_param
    permalink
  end 

  embeds_many :tweets

  validates_numericality_of :vezes, :integer
  validates_uniqueness_of   :username
  validates_presence_of     :username
end
