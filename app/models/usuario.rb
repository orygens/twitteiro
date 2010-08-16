class Usuario
  include Mongoid::Document
  
  attr_accessible :username, :name, :location, :web, :bio
 
  field :username, :type => String
  field :name, :type => String
  field :location, :type => String
  field :web, :type => String
  field :bio, :type => String

  #embeds_many :tweets
end
