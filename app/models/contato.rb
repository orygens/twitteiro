class Contato < MailForm::Base
  attribute :nome,      :validate => true, :captcha => true
  attribute :email,     :validate => /[^@]+@[^\.]+\.[\w\.\-]+/
  attribute :mensagem
  
  def headers
    {
      :subject => "Nova mensagem: Form de contato do Twitteiro",
      :to => "rafael.jacinto@gmail.com",
      :from => %("#{nome}" <#{email}>)
    }
  end
end
