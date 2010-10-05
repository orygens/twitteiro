class Retuite < ActiveRecord::Base
  validates_presence_of  :nome_usuario, :nome_retuitador, :frequencia
  validates_inclusion_of :frequencia, :in => [4, 8, 12, 24, 48]
end
