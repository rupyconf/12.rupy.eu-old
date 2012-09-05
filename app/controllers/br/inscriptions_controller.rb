# -*- encoding : utf-8 -*-
require "digest/sha1"

class Br::InscriptionsController < ApplicationController
  def new
    @inscription = Br::Inscription.new(:state_id => Br::State.find_by_symbol("SP").id)
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
end
