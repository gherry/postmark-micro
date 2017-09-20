require 'active_support/core_ext/module/attribute_accessors'

module PostmarkMicro
  module Configuration
    mattr_accessor :api_token
    mattr_accessor :domain
  end
end
