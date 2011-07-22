module SessionsHelper
  def render_slot(slot_key)
    render :partial => "session_slot", :locals => {:slot_key => slot_key}
  end

  def render_session_block(session)
    render :partial => "sessions/session_block", :locals => { session: session }
  end
end
