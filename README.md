[![Gem Version](https://badge.fury.io/rb/mini_style.svg)](http://badge.fury.io/rb/mini_style)
[![Build Status](https://travis-ci.org/sinsoku/mini_style.svg?branch=master)](https://travis-ci.org/sinsoku/mini_style)
[![Code Climate](https://img.shields.io/codeclimate/github/sinsoku/mini_style.svg)](https://codeclimate.com/github/sinsoku/mini_style)
[![Coverage Status](https://coveralls.io/repos/sinsoku/mini_style/badge.svg?branch=master)](https://coveralls.io/r/sinsoku/mini_style?branch=master)

# MiniStyle

`mini_style` provides a simple helper.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mini_style'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mini_style

## Usage

in your views:

```ruby
style('alert')
# => 'alert'
```

```ruby
style('alert', 'alert-danger': !!flash[:alert], 'alert-success': !!flash[:notice])
# => 'alert alert-success'
```

```ruby
style('alert-danger': !!flash[:alert], 'alert-success': !!flash[:notice])
# => 'alert-success'
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/mini_style/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
