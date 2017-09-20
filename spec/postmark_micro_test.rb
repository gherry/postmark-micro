require 'spec_helper'

describe PostmarkMicro do
  describe "#configure" do
    it "should permit to set api keys and remember them" do
      PostmarkMicro.configure do |config|
        config.username = "Elphaba"
        config.password = "wicked"
        config.domain   = "elphaba@thegood.com"
      end

      PostmarkMicro.config.username.must_equal "Elphaba"
      PostmarkMicro.config.password.must_equal "wicked"
      PostmarkMicro.config.domain.must_equal "elphaba@thegood.com"
    end
  end
end
