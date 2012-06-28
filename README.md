# Generate Gravatar URLs in RubyMotion

Generate the URL for a user's Gravatar image by providing an email address, image size, and optional default image URL.

# Install

Gemfile

```ruby
source :rubygems

gem 'motion-gravatar', :git => 'git://github.com/brianpattison/motion-gravatar.git'
```

Run `bundle install`.

# Usage

```ruby
email = 'brian@brianpattison.com'
size = 512
defaultURL = 'http://example.com/gravatar/default.jpg'
url = Gravatar.getURL(email, size, defaultURL)
```

Both `size` and `defaultURL` are optional. If not provided, Gravatar's defaults will be used, which is 80px for the size and
the Gravatar logo as the default image if one does not exist for the provided email address.

# Thanks

Thanks to [@MugunthKumar](https://github.com/MugunthKumar) for the Objective-C side with [Gravatar](https://github.com/MugunthKumar/Gravatar)!