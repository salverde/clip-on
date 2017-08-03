# Clip-On

Clip-On is the base Rails application we use on several products including.
[Bowtie](https://bowtie.io/), [Bundler](https://bundler.io/).

![Clipon](https://photos-3.dropbox.com/t/2/AAAz0dQouX_NhEbvOwIrmCG5tJxYwb7Q6xf0d5oqfZIcOg/12/1125449/png/32x32/1/_/1/2/README-banner.png/EIynfhjB7rrCASACKAI/ILX5cCwUAA2ZYiNoiUqGoipoa4Rd0KouW9bTyDbMZBA?size=1048x536&size_mode=3)

## Installation

First install the clip-on gem:

`gem install clip-on`

Then run:

`clip-on new [projectname] -flags`

This will create a Rails app in `projectname` using the latest version of Rails.

### Associated services

* Enable [Circle CI](https://circleci.com/) Continuous Integration

## Gemfile

To see the latest and greatest gems, look at Clip-on'
[Gemfile](templates/Gemfile.erb), which will be appended to the default
generated projectname/Gemfile.

It includes application gems like:
* [Delayed Job](https://github.com/collectiveidea/delayed_job) for background
  processing
* [Draper](https://github.com/drapergem/draper) for ViewModel Decoration
* [Sass](https://github.com/rails/sass-rails) for Rails
* [Bootstrap](https://github.com/seyhunak/twitter-bootstrap-rails) for semantic grids
* [Postgres](https://github.com/ged/ruby-pg) for access to the Postgres database
* [Puma](https://github.com/puma/puma) to serve HTTP requests

And development gems like:
* [Dotenv](https://github.com/bkeepers/dotenv) for loading environment variables
* [Pry-ByeBug](https://github.com/deivid-rodriguez/pry-byebug) for interactively
  debugging behavior

And testing gems like:

* [mini-test](https://github.com/seattlerb/minitest) for efficient unit tests

## Other/Optional goodies ??

* The [`./bin/setup`][setup] convention for new developer setup
* The `./bin/deploy` convention for deploying
* An automatically-created `SECRET_KEY_BASE` environment variable in all
  environments
* Configuration for [CircleCI][circle] Continuous Integration (tests)
* Configuration for [Hound][hound] Continuous Integration (style)
* The analytics adapter [Segment][segment] (and therefore config for Google
  Analytics, Intercom, Facebook Ads, Twitter Ads, etc.)

[circle]: https://circleci.com/docs
[hound]: https://houndci.com
[segment]: https://segment.com
