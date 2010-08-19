class Admin
  include Mongoid::Document

  field :password, :message => 'Erro! Campo em branco.'
end
