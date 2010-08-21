class Usuario
  include Mongoid::Document
  
  def to_param
    permalink
  end 

  field :vezes, :type => Integer
  validates_numericality_of :vezes, :integer

  field :username, :type => String
  field :name, :type => String
  field :location, :type => String
  field :web, :type => String
  field :bio, :type => String

  embeds_many :tweets
end
