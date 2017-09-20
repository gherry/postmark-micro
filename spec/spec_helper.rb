require 'minitest/autorun'
require 'minitest/matchers'
require 'minitest/pride'
require 'postmark-micro'

MiniTest::Spec.before do
  PostmarkMicro.configure do |config|
    config.username = "Glinda"
    config.password = "thegood"
    config.domain   = "glinda@wicked.com"
  end
end
