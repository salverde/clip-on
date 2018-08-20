# Clip-On

Clip-On is the base Rails application we use on several products including.

[Bowtie](https://bowtie.io/), [Startup Denver](https://bowtie.io/portfolio), [Only You](https://bowtie.io/portfolio).

  ![Bowtie Clip-on](https://salomon.io/uploads/2018/08/clip-on-pic.png)

## Installation

First install the clip-on gem:

    gem install clip-on

Then run:

    clip-on projectname

This will create a Rails app in `projectname` using the latest version of Rails.

### Associated services

* Enable [TravisCI][travis] Continuous Integration

## Gemfile

To see the latest and greatest gems, look at Clip-on'
[Gemfile](templates/Gemfile.erb), which will be appended to the default
generated projectname/Gemfile.

It includes application gems like:

* [Sidekiq](https://github.com/mperham/sidekiq) for background processing

* [Bootstrap Rubygem](https://github.com/twbs/bootstrap-rubygem) for using Bootstrap 4 with rails

* [Normalize](https://necolas.github.io/normalize.css/) for resetting browser styles

* [Postgres](https://github.com/ged/ruby-pg) for access to the Postgres database

* [Rack Timeout](https://github.com/heroku/rack-timeout) to abort requests that are
  taking too long

* [Mail Catcher](https://github.com/sj26/mailcatcher) to avoid accidentally sending emails to real people from staging

* [Simple Form](https://github.com/plataformatec/simple_form) for form markup
  and style

* [Puma](https://github.com/puma/puma) to serve HTTP requests

And development gems like:
* [Dotenv](https://github.com/bkeepers/dotenv) for loading environment variables

* [Pry-ByeBug](https://github.com/deivid-rodriguez/pry-byebug) for interactively
  debugging behavior

* [Better Errors](https://github.com/charliesome/better_errors) Better Errors replaces the standard Rails error page with a much better and more useful error page.

* [Rubocop](https://github.com/bbatsov/rubocop) Static Analyzer to standardize our code

And testing gems like:

* [mini-test](https://github.com/seattlerb/minitest) for efficient unit tests

## Other goodies

Clip-on also comes with:

* The [`./bin/setup`][setup] convention for new developer setup
* The `./bin/deploy` convention for deploying to Heroku
* Rails' flashes set up and in application layout
* A few nice time formats set up for localization
* `Rack::Deflater` to [compress responses with Gzip][compress]
* A [low database connection pool limit][pool]
* [Safe binstubs][binstub]
* [t() and l() in specs without prefixing with I18n][i18n]
* An automatically-created `SECRET_KEY_BASE` environment variable in all
  environments
* Configuration for [TravisCI][travis] Continuous Integration (tests)



* The analytics adapter [Segment][segment] (and therefore config for Google
  Analytics, Intercom, Facebook Ads, Twitter Ads, etc.)

[travis]: https://travis-ci.com/

[segment]: https://segment.com

## Git

This will initialize a new git repository for your Rails app. You can
bypass this with the `--skip-git` option:

    clip-on app --skip-git true

## GitHub

You can optionally create a GitHub repository for the clipped on Rails app. It
requires that you have [Hub](https://github.com/github/hub) on your system:

    curl http://hub.github.com/standalone -sLo ~/bin/hub && chmod +x ~/bin/hub
    clip-on app --github organization/project

This has the same effect as running:

    hub create organization/project

## Spring

Clip-on uses [spring](https://github.com/rails/spring) by default.
It makes Rails applications load faster, but it might introduce confusing issues
around stale code not being refreshed.
If you think your application is running old code, run `spring stop`.
And if you'd rather not use spring, add `DISABLE_SPRING=1` to your login file.

## Dependencies

Clip-on requires the latest version of Ruby.

Some gems included in Clip-on have native extensions. You should have the latest version of
Xcode and command line tools installed on your machine before generating an app with Clip-on.

Just install Xcode from the Appstore. It'll have the latest LLVM

PostgreSQL needs to be installed and running for the `db:create` rake task.

## Issues

If you have problems, please create a
[GitHub Issue](https://github.com/bowtie-co/clip-on/issues).

## License

Clipon is Copyright © 2018 Bowtie Inc.
It is free software,
and may be redistributed under the terms specified in the [LICENSE] file.

[LICENSE]: LICENSE

## Attribution
Clipon wouldn't exist without the stylish looks of [Suspenders](https://github.com/thoughtbot/suspenders)

## About Bowtie Agency

[![bowtie][bowtie-logo]][bowtie]

Clip-on is maintained by Seedworthy, inc. The names and logos for Bowtie are trademarks of Seedworthy, inc.

[bowtie]: https://bowtie.io
[bowtie-logo]: https://bowtie.io/img/bt-logo.png
