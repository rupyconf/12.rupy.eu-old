# -*- encoding : utf-8 -*-
class Br::InscriptionMailersController < Br::BrController
  before_filter :authenticate_admin!

  def create
    Br::InscriptionMailer.blank_status_email(Br::Inscription.find_by_payment_token(params[:inscription_id])).deliver
    render :nothing => true
  end

end
