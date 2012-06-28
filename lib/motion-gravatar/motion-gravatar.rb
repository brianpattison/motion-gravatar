# Class for generating Gravatar URLs.
class Gravatar
  
  # Generate the URL for a user's Gravatar image by providing an email address, image size, and optional default image URL.
  # @param [String] email
  # @param [Integer] size Between 1 and 512.
  # @param [String] defaultURL (optional)
  # @return [NSURL]
  def self.getURL(email, size=80, defaultURL=nil)
    GravatarHelper.getGravatarURL(email, size:size, defaultURL:defaultURL)
  end
  
end