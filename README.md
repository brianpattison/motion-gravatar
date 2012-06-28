# Generate Gravatar URLs in RubyMotion

Generate the URL for a user's [Gravatar](http://gravatar.com) image by providing an email address, image size, and optional default image URL.

# Install

Use Bundler to manage gems in RubyMotion.

**Rakefile**

```ruby
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'
Bundler.require

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'Testing'
end
```

**Gemfile**

```ruby
source :rubygems

gem 'motion-gravatar'
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