# Gravityforms::Api

A simple Ruby wrapper of the Gravity Forms Web API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gravityforms-api'
```

And then execute:

	$ bundle

Or install it yourself as:

    $ gem install gravityforms-api

## Usage

Add configuration:

```ruby
# config/initializers/gravityforms_api.rb
Gravityforms::Api.configure do |config|
  config.api_url = 'http://mydomain.com/gravityformsapi/'
  config.api_key = 'api_key'
  config.private_key = 'private_key'
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/gravityforms-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
