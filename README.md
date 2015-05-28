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
