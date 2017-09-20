require 'spec_helper'

describe PostmarkMicro::Configuration do
  describe "accessors" do
    it "should memorize values" do
      PostmarkMicro::Configuration.username = 'Wicked witch of the west'
      PostmarkMicro::Configuration.username.must_equal 'Wicked witch of the west'
    end
  end
end
