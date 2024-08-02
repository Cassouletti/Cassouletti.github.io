# Merlot

Put your Ruby code in the file `lib/merlot`. To experiment with that code, run `bin/console` for an interactive prompt.

## Dependencies

Ruby:  

2.2.2p95 (2015-04-13 revision 50295)
2.2.3p173 (2015-08-18 revision 51636) [x86_64-darwin14]
2.3.1

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'merlot'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install merlot

## Usage

This is very top secret. This gem is used to get rich quick.

## Testing

The time it takes to test this manually is almost the same as running an automated test. So, there are no tests. If there is a way to compare two pdf files programmatically, we can write a test that compares the generated file with a golden master. Let me know if there is any library that will compare two pdf documents that can used in tests.

```
bin/console
Merlot::Stamper.stamp('mira@tangogoddess.com', '/Users/zepho/projects/merlot/tdd.pdf', '/Users/zepho/projects/merlot/output.pdf')
```

This will stamp the email address to the bottom of every page in tdd.pdf and save it as output.pdf.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

gem build merlot.gemspec 
gem push merlot-0.1.1.gem

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

