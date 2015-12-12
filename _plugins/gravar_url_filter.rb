require 'digest/md5'

module HQC
  module GravatarURLFilter
    GRAVATAR_PATTERN = "https://www.gravatar.com/avatar/%s".freeze

    def gravatar_url(email)
      GRAVATAR_PATTERN % Digest::MD5.hexdigest(email.downcase)
    end
  end
end

Liquid::Template.register_filter(HQC::GravatarURLFilter)
