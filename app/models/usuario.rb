class Usuario
  include Mongoid::Document

  field :vezes, :type => Integer
  embeds_many :tweets
  validates_numericality_of :vezes
end
