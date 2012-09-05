# -*- encoding : utf-8 -*-
class Br::PaymentsController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:update]

  def show
  end

  def update
    pagseguro_notification do |notification|
      @inscription = Br::Inscription.find_by_payment_token(params[:Referencia])
      @inscription.payment_status = notification.status
      @inscription.payment_method = notification.payment_method
      @inscription.payment_processed_at = notification.processed_at
      @inscription.save
    end

    render :nothing => true
  end
end
