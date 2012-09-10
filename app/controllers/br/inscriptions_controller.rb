# -*- encoding : utf-8 -*-
require "digest/sha1"

class Br::InscriptionsController < Br::BrController
  layout 'admin', :only => [:index]
  before_filter :authenticate_admin!, :only => [:index]
  skip_before_filter :verify_authenticity_token, :only => [:update]

  def index
    if params[:training_id].present?
      @inscriptions = Br::Inscription.find_all_by_training_id(params[:training_id])
    else
      @inscriptions = Br::Inscription.find_all_by_event_id(@event.id)
    end
  end

  def new
    if params[:training_id].present?
      @inscription = Br::Inscription.new(:training_id => params[:training_id], :state_id => Br::State.find_by_symbol("SP").id)
    else
      @inscription = Br::Inscription.new(:event_id => @event.id, :state_id => Br::State.find_by_symbol("SP").id)
    end
  end

  def create
    @inscription = Br::Inscription.new(params[:br_inscription])
    @inscription.save

    @inscription.payment_token = Digest::SHA1.hexdigest("#{@inscription.id} - #{@inscription.created_at} - rupy2012br")
    @inscription.save

    respond_with @inscription
  end

  def show
    @inscription = Br::Inscription.find_by_payment_token(params[:id])

    @order = PagSeguro::Order.new(@inscription.payment_token)
    @order.billing = { :name => @inscription.name, :email => @inscription.email }
    @order.add :id => @inscription.id, :price => @event.inscription_value, :description => "Inscrição no evento RUPY 2012 (São José dos Campos/SP Edition) para os dias 08/12 e 09/12"
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
