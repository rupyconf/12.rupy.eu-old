# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Rupy::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :authentication => :plain,
  :user_name => "contato@designa.com.br",
  :password => <%= ENV["SMTP_RUPY_PASSWORD"] %>
}
