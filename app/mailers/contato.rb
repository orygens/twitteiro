class Contato < ActionMailer::Base
  default :from => 'from@example.com'
  default :to => 'rodrigo3n@gmail.com'

  def send(mensagem)
    @mensagem = mensagem
    mail( :subject => @mensagem.subject, :from => @mensagem.email ) do |format|
      format.html
    end
  end
end
