require 'rails'
require 'authoreyes/version'
require 'authoreyes/parser'
require 'authoreyes/authorization'
require 'authoreyes/railtie'

module Authoreyes
  autoload ::Helpers 'authoreyes/helpers'
end
