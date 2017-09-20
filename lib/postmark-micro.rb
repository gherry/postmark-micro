require 'postmark_micro/configuration'
module PostmarkMicro
  def self.configure
    yield PostmarkMicro::Configuration
  end

  def self.config
    PostmarkMicro::Configuration
  end
end

if defined?(ActionMailer)
  require 'action_mailer/version'
  require 'postmark_micro/mailer' if ActionMailer::Base.respond_to?(:add_delivery_method)
end

require 'postmark_micro/rack/endpoint'
