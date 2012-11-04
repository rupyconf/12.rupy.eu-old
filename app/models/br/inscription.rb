# -*- encoding : utf-8 -*-
class Br::Inscription < ActiveRecord::Base
  belongs_to :event
  belongs_to :training
  belongs_to :city

  attr_accessor :state_id
  validates_uniqueness_of :payment_token
  validates_presence_of :first_name, :last_name, :email, :cpf, :city_id, :ruby_experience, :python_experience, :javascript_experience
  validates_inclusion_of :student, :conferred, :excluded, :in => [true, false]

  validates_inclusion_of :conferred, :in => [false], :unless => "self.confirmed_status?", :message => "not allowed for this status"
  validates_inclusion_of :excluded, :in => [false], :unless => "self.can_destroy?", :message => "not allowed for this status"

  default_scope where(:excluded => false)

  def self.experiences_itens
    ["Nenhum", "Iniciante", "Intermediário", "Avançado"]
  end

  def name
    "#{self.first_name} #{last_name}"
  end

  def to_param
    self.payment_token
  end

  def payment_status_formatted
    status = {
      "completed" => "Completo",
      "pending" => "Aguardando pagamento",
      "approved" => "Aprovado",
      "verifying" => "Em análise",
      "canceled" => "Cancelado",
      "refunded" => "Devolvido",
    }
    self.payment_status.blank? ? "" : status[self.payment_status]
  end

  def status
    self.confirmed_status? ? "Confirmada" : "Aguardando confirmação do pagamento"
  end

  def payment_confirmed?(old_status)
    old_status ||= ""
    !confirmed_status?(old_status) && confirmed_status?
  end

  def payment_pending?(old_status)
    old_status != "pending" && self.payment_status.to_s == "pending"
  end

  def confirmed_status?(status = nil)
    status ||= self.payment_status.to_s
    ["completed", "approved"].include? status
  end

  def can_destroy?
    [nil, "", "pending", "canceled"].include? self.payment_status.to_s
  end

  def id_formatted
    self.id.to_s.rjust(4, "0")
  end

  def payment_processed_at_formatted
    self.payment_processed_at.nil? ? "" : I18n.l(self.payment_processed_at, :format => :short)
  end

end
