require "gem_config"
require "gravityforms/api/version"
require "gravityforms/api/request"
require "gravityforms/api/form"

module Gravityforms
  module Api
    include GemConfig::Base

    with_configuration do
      has :api_url, classes: String
      has :api_key, classes: String
      has :private_key, classes: String
    end
  end
end
