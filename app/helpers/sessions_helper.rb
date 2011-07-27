module SessionsHelper
  def render_slot(slot_key)
    render :partial => "session_slot", :locals => {:slot_key => slot_key}
  end

  def render_all_sessions(sessions)
    html = "";
    sessions.each do |s| 
      html += render_session_block s
    end 
    return html
  end

  def render_session_block(session)
    render :partial => "sessions/session_block", :locals => { session: session }
  end
end
