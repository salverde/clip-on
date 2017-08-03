# Clip-On

Clip-On is the base Rails application used at
[Bowtie](https://bowtie.io/).

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
