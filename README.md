# Logs
[![Gem Version](https://badge.fury.io/rb/logs.svg)](https://badge.fury.io/rb/logs)
[![CircleCI](https://circleci.com/gh/kirillshevch/logs.svg?style=shield&circle-token=5e904bb791d31a5f8bd06b0cf29746f69aeb6caa)](https://circleci.com/gh/kirillshevch/logs)
[![Maintainability](https://api.codeclimate.com/v1/badges/c121e93550b2e6e4d2ae/maintainability)](https://codeclimate.com/github/kirillshevch/logs/maintainability)

Mountable Rails Engine for viewing paginated logs from a browser

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'logs'
```

And then execute:
```bash
$ bundle
```

Mount Engine:

`config/routes.rb`
```ruby
Rails.application.routes.draw do
  mount Logs::Engine => '/logs'
end
```

Look up on `/logs` route.

![Logs](https://github.com/kirillshevch/logs/blob/master/demo.jpg "Logs")

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
