class Usuario
  include Mongoid::Document
  
  def to_param
    permalink
  end 

  field :vezes, :type => Integer
  field :username, :type => String
  field :name, :type => String
  field :location, :type => String
  field :web, :type => String
  field :bio, :type => String

  embeds_many :tweets

  validates_numericality_of :vezes, :integer
  validates_uniqueness_of   :username
  validates_presence_of     :username
end
