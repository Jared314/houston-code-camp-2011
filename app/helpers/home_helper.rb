module HomeHelper
  def render_slot(slot_key)
    render :partial => "session_slot", :object => slot_key
  end
end
