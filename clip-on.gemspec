# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'clip-on/version'
require 'date'

Gem::Specification.new do |s|
  s.required_ruby_version = ">= #{Clipon::RUBY_VERSION}"
  s.authors = ['bowtie']
  s.date = Date.today.strftime('%Y-%m-%d')

  s.description = <<-HERE
Bowtie is a base Rails project that you can upgrade. It is used by
Bowtie to get a jump start on a working app. Use Clipon if you're in a
rush to build something amazing; don't use it if you like missing deadlines.
  HERE

  s.email = 'sal@bowtieagency.com'
  s.executables = ['bowtie']
  s.extra_rdoc_files = %w[README.md LICENSE]
  s.files = `git ls-files`.split("\n")
  s.homepage = 'https://bitbucket.org/salomoko/clip-on'
  s.license = 'MIT'
  s.name = 'clip-on'
  s.rdoc_options = ['--charset=UTF-8']
  s.require_paths = ['lib']
  s.summary = "Generate a Rails app with all Bowtie's favorites."
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.version = Clipon::VERSION

  s.add_dependency 'bitters', '~> 1.7'
  s.add_dependency 'bundler', '~> 1.3'
  s.add_dependency 'rails', Clipon::RAILS_VERSION

  s.add_development_dependency 'rspec', '~> 3.2'
end
