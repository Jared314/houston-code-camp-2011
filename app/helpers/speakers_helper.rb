require 'digest'

module SpeakersHelper
  def gravatar(speaker)
    image_tag("http://www.gravatar.com/avatar.php?gravatar_id=#{Digest::MD5::hexdigest(speaker.email)}", :alt => speaker.name, :class => "avatar")
  end

  def twitter(speaker)
    return if speaker.twitter_handle == nil 
    return if speaker.twitter_handle.length == 0

    return link_to "@" + speaker.twitter_handle, "http://twitter/" + speaker.twitter_handle
  end
end
