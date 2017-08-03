# Clip-On

Clip-On is the base Rails application used at
[Bowtie](https://bowtie.io/).

  [Clipon](https://photos-3.dropbox.com/t/2/AAAz0dQouX_NhEbvOwIrmCG5tJxYwb7Q6xf0d5oqfZIcOg/12/1125449/png/32x32/1/_/1/2/README-banner.png/EIynfhjB7rrCASACKAI/ILX5cCwUAA2ZYiNoiUqGoipoa4Rd0KouW9bTyDbMZBA?size=1048x536&size_mode=3)

## Installation

First install the clip-on gem:

`gem install clip-on`

Then run:

  `clip-on new [projectname] -flags`

This will create a Rails app in `projectname` using the latest version of Rails.

### Associated services

* Enable [Circle CI](https://circleci.com/) Continuous Integration ??


## Gemfile

To see the latest and greatest gems, look at Clip-on'
[Gemfile](templates/Gemfile.erb), which will be appended to the default
generated projectname/Gemfile.

It includes application gems like:

* [Puma](https://github.com/puma/puma) to serve HTTP requests

And development gems like:

* [Dotenv](https://github.com/bkeepers/dotenv) for loading environment variables
* [Pry-ByeBug](https://github.com/deivid-rodriguez/pry-byebug) for interactively
  debugging behavior


And testing gems like:

* [mini-test](https://github.com/seattlerb/minitest) for test data


## Other goodies
