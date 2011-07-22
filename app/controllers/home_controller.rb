class HomeController < ApplicationController
  def index
  end

  def registration
  end

  def speakers
  end

  def schedule
  	sessions = Session.all
    @slots = {}
    @unassigned_sessions = []
    sessions.each do |session|
      if session.slot_key == nil
        @unassigned_sessions << session
      else
        @slots[session.slot_key] = session
      end
    end
  end
end
