# -*- encoding : utf-8 -*-
class Br::InscriptionMailer < ActionMailer::Base
  default from: "contato@designa.com.br"

  def confirm_email(inscription)
    @inscription = inscription
    mail(:to => [inscription.email, "contato@rupy.com.br"], :subject => "[RuPy 2012] Inscrição confirmada!")
  end
end
