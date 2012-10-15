class Br::BrController < ApplicationController

  layout 'br'
  before_filter :verify_domain_locale!

protected

  def verify_domain_locale!
    raise ActionController::RoutingError.new("Domain not valid") unless @event.domain_locale == "br"
  end

end
