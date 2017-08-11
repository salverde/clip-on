require "rails/generators"

module Clipon
  class StylesheetBaseGenerator < Rails::Generators::Base
    source_root File.expand_path(
      File.join("..", "..", "..", "templates"),
      File.dirname(__FILE__))

    def add_stylesheet_gems
      gem 'bootstrap-sass', '~> 3.3.6'
      gem 'sass-rails', '>= 3.2'
      Bundler.with_clean_env { run "bundle install" }
    end

    def add_css_config
      copy_file(
        "application.scss",
        "app/assets/stylesheets/application.scss",
        force: true,
      )
    end

    def remove_prior_config
      remove_file "app/assets/stylesheets/application.css"
    end

    def install_normalize_css
      run "bin/yarn add normalize.css"
    end
  end
end
