# -*- encoding : utf-8 -*-
class Br::InscriptionMailer < ActionMailer::Base
  default from: "contato@designa.com.br"

  def blank_status_email(inscription)
    @inscription = inscription
    mail(:to => [inscription.email, "contato@rupy.com.br"], :subject => "[RuPy 2012] Dê continuidade em sua inscrição...")
  end

  def pending_email(inscription)
    @inscription = inscription
    mail(:to => [inscription.email, "contato@rupy.com.br"], :subject => "[RuPy 2012] Inscrição aguardando confirmação de pagamento...")
  end

  def confirm_email(inscription)
    @inscription = inscription
    mail(:to => [inscription.email, "contato@rupy.com.br"], :subject => "[RuPy 2012] Inscrição confirmada!")
  end
end
