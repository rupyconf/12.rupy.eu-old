class ApplicationController < ActionController::Base

  protect_from_forgery
  respond_to :html

  before_filter :load_event, :load_locale

protected

  def load_event
    @event = Event.find_by_host(request.host)
  end

  def load_locale
    if self.kind_of?(Admin::AdminController) || self.kind_of?(Devise::SessionsController)
      I18n.locale = I18n.default_locale
    else
      I18n.locale = @event.try(:locale) || I18n.default_locale
    end
  end

end
