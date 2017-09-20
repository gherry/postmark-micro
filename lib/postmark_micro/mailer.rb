require 'action_mailer'
require 'mail'

class PostmarkMicro::Mailer < ::Mail::SMTP
  def initialize(options = {})
    super({
      :user_name => PostmarkMicro.config.api_token,
      :password => PostmarkMicro.config.api_token,
      :domain => PostmarkMicro.config.domain,
      :address => 'smtp.postmarkapp.com',
      :port => 2525,
      :authentication => :plain,
      :enable_starttls_auto => true
    }.merge(options))
  end
end

ActionMailer::Base.add_delivery_method :postmark, PostmarkMicro::Mailer
