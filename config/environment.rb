# Load the rails application
require File.expand_path('../application', __FILE__)

# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV["SEND_Username"],
#   :password => ENV["SEND_Password"],
#   :domain => 'friendtexter.com',
#   :address => 'smtp.sendgrid.net',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }

# Initialize the rails application
FriendTexter::Application.initialize!
