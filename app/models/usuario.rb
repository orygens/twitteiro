class Usuario
  include MongoMapper::Document
  
  attr_accessible :name, :location, :web, :bio
 
  key :name, String
  key :location, String
  key :web, String
  key :bio, String

  many :tweets
end
