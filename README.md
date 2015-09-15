# Gravityforms::Api

A simple Ruby wrapper for the Gravity Forms Web API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'gravityforms-api'
```

And then execute:

	$ bundle

Or install it yourself as:

    $ gem install gravityforms-api

## Configuration

Add configuration:

```ruby
# config/initializers/gravityforms_api.rb
Gravityforms::Api.configure do |config|
  config.api_url = 'http://mydomain.com/gravityformsapi/'
  config.api_key = 'api_key'
  config.private_key = 'private_key'
end
```

Or in `.env`:

```text
API_URL="http://mydomain.com/gravityformsapi/"
API_KEY="api_key"
PRIVATE_KEY="private_key"
```

## Usage

Get all forms:

```ruby
Gravityforms::Api::Form.all
```

Get form with ID=1:

```ruby
Gravityforms::Api::Form.find(1)
```

Submit a form with ID=1:

```ruby
json = '{"input_values":{"input_1":"Hello","input_2_3":"John","input_2_6":"Smith"}}'
response = Gravityforms::Api::Form.submit(1, json)
```

Example response:

```json
{
  "is_valid": true,
  "page_number": 0,
  "source_page_number": 1,
  "confirmation_message": "this is the confirmation [snipped]"
}
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/gravityforms-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
