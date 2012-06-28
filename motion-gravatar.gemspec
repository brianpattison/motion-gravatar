Gem::Specification.new do |gem|
  gem.authors       = ["Brian Pattison"]
  gem.email         = ["brian@brianpattison.com"]
  gem.description   = "Generate Gravatar URLs in RubyMotion"
  gem.summary       = "Generate the URL for a user's Gravatar image by providing an email address, image size, and optional default image URL."
  gem.homepage      = "https://github.com/brianpattison/motion-gravatar"

  gem.files         = `git ls-files`.split($\)
  gem.name          = "motion-gravatar"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.3'
end