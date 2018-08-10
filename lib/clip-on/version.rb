module Clipon
  RAILS_VERSION = "~> 5.1.3".freeze
  RUBY_VERSION = IO.
    read("#{File.dirname(__FILE__)}/../../.ruby-version").
    strip.
    freeze
  VERSION = "0.1.0".freeze
end
