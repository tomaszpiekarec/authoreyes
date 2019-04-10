require 'rails'
require 'authoreyes/version'
require 'authoreyes/parser'
require 'authoreyes/authorization'
require 'authoreyes/railtie'
require 'authoreyes/helpers'

module Authoreyes
  class Railtie
    # Require helpers after Rails initialization
    config.after_initialize do
      
      # Include Controller helpers
      ActionController::Metal.include Authoreyes::Helpers::InController

      # Include User helpers
      ActiveRecord::Base.include Authoreyes::Helpers::InUser

      # Include Model helpers
      ActiveRecord::Base.include Authoreyes::Helpers::InModel
    end
  end
end
