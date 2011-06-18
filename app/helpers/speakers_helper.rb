require 'digest'

module SpeakersHelper
  def gravatar(speaker)
    image_tag("http://www.gravatar.com/avatar.php?gravatar_id=#{Digest::MD5::hexdigest(speaker.email)}", :alt => speaker.name, :class => "avatar")
  end
end
