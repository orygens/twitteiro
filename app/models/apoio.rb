# -* encoding:utf-8 -*-
class Apoio < ActiveRecord::Base
  validates_presence_of  :nome_usuario, :nome_apoiador, :frequencia
  validates_inclusion_of :frequencia, :in => [4, 8, 12, 24, 48]
  
  def usuario=(id)
    usuario_id = id
  end

  def apoiador=(id)
    apoiador_id = id
  end
 
  def verify_uniqueness
    ! Apoio.where(:usuario_id => usuario_id).and(:apoiador_id => :apoiador_id).empty?
  end
end
