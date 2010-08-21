# -*- encoding:utf-8 -*-
class Contato < MailForm::Base
  attribute :nome,      :validate => true
  attribute :email,     :validate => /[^@]+@[^\.]+\.[\w\.\-]+/
  attribute :mensagem
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Nova mensagem: Formulário de contato do Twitteiro",
      :to => "rafael.jacinto@gmail.com",
      :from => %("#{nome}" <#{email}>)
    }
  end
end
