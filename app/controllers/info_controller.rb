class InfoController < ApplicationController
  def sobre
  end

  def faq
  end

  def contato
    @contato = Contato.new
  end

  def privacidade
  end

  def termos
  end

end
