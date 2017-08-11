require 'rails/generators'
require 'rails/generators/rails/app/app_generator'

module Clipon
  class AppGenerator < Rails::Generators::AppGenerator
    hide!

    class_option :database, type: :string, aliases: "-d", default: "postgresql",
      desc: "Configure for selected database (options: #{DATABASES.join("/")})"


    class_option :github, type: :string, default: nil,
      desc: "Create Github repository and add remote origin pointed to repo"

    class_option :version, type: :boolean, aliases: "-v", group: :clipon,
      desc: "Show Suspenders version number and quit"

    class_option :help, type: :boolean, aliases: '-h', group: :clipon,
      desc: "Show this help message and quit"

    class_option :path, type: :string, default: nil,
      desc: "Path to the gem"

    class_option :skip_test, type: :boolean, default: true,
      desc: "Skip Test Unit"

    class_option :skip_system_test,
                 type: :boolean, default: true, desc: "Skip system test files"

    class_option :skip_turbolinks,
                 type: :boolean, default: true, desc: "Skip turbolinks gem"

    def finish_template
      invoke :clipon_customization
      super
    end

    def clipon_customization
      invoke :customize_gemfile
      invoke :setup_development_environment
      invoke :setup_test_environment
      invoke :setup_production_environment
      invoke :setup_secret_token
      invoke :create_clip-on_views
      invoke :configure_app
      invoke :copy_miscellaneous_files
      invoke :customize_error_pages
      invoke :remove_config_comment_lines
      invoke :remove_routes_comment_lines
      invoke :setup_dotfiles
      invoke :setup_database
      invoke :create_local_heroku_setup
      invoke :create_heroku_apps
      invoke :create_github_repo
      invoke :setup_segment
      invoke :setup_bundler_audit
      invoke :setup_spring
      invoke :generate_default
      invoke :setup_default_directories
      invoke :outro
    end

    def customize_gemfile
      build :replace_gemfile, options[:path]
      build :set_ruby_to_version_being_used
      bundle_command 'install'
      build :configure_simple_form
    end

    def setup_database
      say 'Setting up database'

      if 'postgresql' == options[:database]
        build :use_postgres_config_template
      end

      build :create_database
    end

    def setup_development_environment
      say 'Setting up the development environment'
      build :raise_on_missing_assets_in_test
      build :raise_on_delivery_errors
      build :set_test_delivery_method
      build :add_bullet_gem_configuration
      build :raise_on_unpermitted_parameters
      build :provide_setup_script
      build :provide_dev_prime_task
      build :configure_generators
      build :configure_i18n_for_missing_translations
      build :configure_quiet_assets
    end

    def setup_test_environment
      # TODO
      # remove rspec and factory_girl in place for minitest

      # say 'Setting up the test environment'
      # build :set_up_factory_girl_for_rspec
      # build :generate_factories_file
      # build :set_up_hound
      # build :generate_rspec
      # build :configure_rspec
      # build :configure_background_jobs_for_rspec
      # build :enable_database_cleaner
      # build :provide_shoulda_matchers_config
      # build :configure_spec_support_features
      # build :configure_ci
      # build :configure_i18n_for_test_environment
      # build :configure_action_mailer_in_specs
      # build :configure_capybara_webkit
    end

    def setup_production_environment
      say 'Setting up the production environment'
      build :configure_smtp
      build :configure_rack_timeout
      build :enable_rack_canonical_host
      build :enable_rack_deflater
      build :setup_asset_host
    end

    def setup_secret_token
      say 'Moving secret token out of version control'
      build :setup_secret_token
    end

    def create_clipon_views
      say 'Creating clip-on views'
      build :create_partials_directory
      build :create_shared_flashes
      build :create_shared_javascripts
      build :create_shared_css_overrides
      build :create_application_layout
    end

    def configure_app
      say 'Configuring app'
      build :configure_action_mailer
      build :configure_active_job
      build :configure_time_formats
      build :setup_default_rake_task
      build :replace_default_puma_configuration
      build :set_up_forego
      build :setup_rack_mini_profiler
    end


    def create_github_repo
      if !options[:skip_git] && options[:github]
        say 'Creating Github repo'
        build :create_github_repo, options[:github]
      end
    end

    def setup_segment
      say 'Setting up Segment'
      build :setup_segment
    end

    def setup_dotfiles
      build :copy_dotfiles
    end

    def setup_default_directories
      build :setup_default_directories
    end

    def setup_bundler_audit
      say "Setting up bundler-audit"
      build :setup_bundler_audit
    end

    def setup_spring
      say "Springifying binstubs"
      build :setup_spring
    end

    def copy_miscellaneous_files
      say 'Copying miscellaneous support files'
      build :copy_miscellaneous_files
    end

    def customize_error_pages
      say 'Customizing the 500/404/422 pages'
      build :customize_error_pages
    end

    def remove_config_comment_lines
      build :remove_config_comment_lines
    end

    def remove_routes_comment_lines
      build :remove_routes_comment_lines
    end

    def generate_default
      run("spring stop")
      generate("clip-on:enforce_ssl")
      generate("clip-on:static")
      generate("clip-on:stylesheet_base")
    end

    def outro
      say 'Congratulations! You just snapped on our clip-on.'
    end

    def self.banner
      "clip-on #{arguments.map(&:usage).join(' ')} [options]"
    end

    protected

    def get_builder_class
      Clipon::AppBuilder
    end

    def using_active_record?
      !options[:skip_active_record]
    end
  end
end
