class Usuario
  include Mongoid::Document
  
  def to_param
    permalink
  end 

  validates_numericality_of :vezes, :integer
end
