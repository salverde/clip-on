require "rails/generators"
require_relative "../actions"

module Clipon
  class EnforceSslGenerator < Rails::Generators::Base
    include Clipon::Actions

    def enforce_ssl
      configure_environment "production", "config.force_ssl = true"
    end
  end
end
