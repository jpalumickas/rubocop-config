# My RuboCop config

Shared RuboCop config for my personal projects

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-jpalumickas-config',
  github: 'jpalumickas/rubocop-config', require: false
```

## Usage

```yml
inherit_gem:
  rubocop-jpalumickas-config:
    - "config/rubocop.yml"
    # uncomment if use Rails cops
    # - "config/rails.yml"

AllCops:
  TargetRubyVersion: 2.5
  # uncomment if use rails cops
  # TargetRailsVersion: 5.2
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
