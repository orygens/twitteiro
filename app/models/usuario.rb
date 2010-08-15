class Usuario
  include Mongoid::Document
  
  attr_accessible :name, :location, :web, :bio
 
  field :name
  field :location
  field :web
  field :bio

  #embeds_many :tweets
end
