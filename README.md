# GroundhogDay

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/groundhog_day`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'groundhog_day'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install groundhog_day

## Usage
#### Repeating Date:
Today will always be the date provided.
```ruby
Date.today # => 2016-02-02

GroundhogDay.enable! date: Date.new(2014, 11, 15)

Date.today # => 2014-11-15

# ... wait for a day to pass
Date.today # => 2014-11-15

GroundhogDay.disable!

Date.today # => 2016-02-03
```
#### Repeating Time:
Now will always be the date provided, but time will be real-time.

```ruby
Time.now # => 2016-02-02 10:00:00 -0600

GroundhogDay.enable! date: Date.new(2014, 11, 15)

Time.now # => 2014-11-15 10:00:05 -0600

# ... wait 10 minutes
Time.now # => 2014-11-15 10:10:05 -0600

GroundhogDay.disable!

Time.now # => 2016-01-29 10:10:10 -0600
```

#### Rails
```ruby
# config/initializers/groundhog_day.rb

if (groundhog_date = ENV['GROUNDHOG_DATE'])
  require 'groundhog_day'
  GroundhogDay.enable! date: Date.parse(groundhog_date)
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/taylorzr/groundhog_day.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

