class Contato
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :nome, :email, :mensagem

  def initialize(attributes = {})
    attributes.each do |nome, valor|
      send("#{nome}=", valor)
    end
  end

  def persisted?
    false
  end
end
