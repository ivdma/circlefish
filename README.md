# CircleFish

Circle CI webhook wrapper gem.

## Installation

Add this line to your application's Gemfile:

    gem 'circlefish'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install circlefish

## Usage

    webhook = Circlefish.from_json(request.body.to_s)

    webhook.status
    # => "success"

## Contributing

1. Fork it ( https://github.com/[my-github-username]/CircleFish/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
