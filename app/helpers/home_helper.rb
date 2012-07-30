module HomeHelper
  def render_slot(slot_key)
    render :partial => "session_slot", :object => slot_key
  end

  def render_nice_url(url)
    url.gsub(/^https?:\/\/(www\.)?/, '').gsub(/\/$/, '')
  end
end
