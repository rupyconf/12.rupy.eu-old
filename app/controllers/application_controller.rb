class ApplicationController < ActionController::Base

  protect_from_forgery
  respond_to :html

  before_filter :load_event, :load_locale
  helper_method :controller_name_with_namespace

protected

  def load_event
    if request.host == "localhost"
      @event = Event.find_by_host_test
    else
      @event = Event.find_by_host(request.host)
    end
  end

  def load_locale
    if self.kind_of?(Admin::AdminController) || self.kind_of?(Devise::SessionsController)
      I18n.locale = I18n.default_locale
    else
      I18n.locale = @event.try(:locale) || I18n.default_locale
    end
  end

  def controller_name_with_namespace
    controller_name = self.class.name.underscore
    controller_name.gsub!(/\//, "_")
    controller_name.gsub!(/_controller$/, "")
  end

end
