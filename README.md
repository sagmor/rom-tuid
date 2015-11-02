# TUID helpers for Ruby Object Mapper

Helpers to work with [TUIDs](https://github.com/sagmor/tuid) inside [ROM](http://rom-rb.org/).

## Usage

Add this line to your application's Gemfile:

```ruby
gem 'rom-tuid'
```

Add TUID generation to `Create` commands:

```ruby
require 'rom/tuid'

class CreateUser < ROM::Commands::Create[:memory]
  use :generate_tuid
end
```

And an id will be generated when needed:

```ruby
env.command(:users).create.call(name: 'Seba')
#=> [{:id=>"5637b049-fc4f-4a7c-b8fc-9c3ed4250188", :name=>"Seba"}]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sagmor/rom-tuid. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

