class HomeController < ApplicationController
  def index
    @sponsors = [
      # Gold
      Sponsor.new({:name => 'Microsoft', :url => 'http://www.microsoft.com', :image_path => 'sponsor.jpg', :level => :gold}),
      Sponsor.new({:name => 'Headspring', :url => 'http://www.headspring.com', :image_path => 'headspring.jpg', :level => :gold}),
      Sponsor.new({:name => 'ComponentOne', :url => 'http://www.componentone.com', :image_path => 'componentone.jpg', :level => :gold}),

      #Silver
      Sponsor.new({:name => 'Telerik', :url => 'http://www.telerik.com', :image_path => 'telerik.png', :level => :silver}),
      Sponsor.new({:name => 'Tekpub', :url => 'http://www.tekpub.com', :image_path => 'tekpub.jpg', :level => :silver}),
      Sponsor.new({:name => 'Pluralsight', :url => 'http://www.pluralsight.com', :image_path => 'pluralsight.png', :level => :silver}),
      Sponsor.new({:name => 'Snapstream', :url => 'http://www.snapstream.com', :image_path => 'snapstream.png', :level => :silver}),

      #Special Thanks
      Sponsor.new({:name => 'Github', :url => 'http://www.github.com', :image_path => 'github.png', :level => :special}),
      Sponsor.new({:name => 'The Pragmatic Bookshelf', :url => 'http://www.pragprog.com', :image_path => 'pragprog.png', :level => :special}),
      Sponsor.new({:name => 'Code School', :url => 'http://www.codeschool.com', :image_path => 'codeschool.png', :level => :special}),
      Sponsor.new({:name => "O'Reilly", :url => 'http://www.oreilly.com', :image_path => 'oreilly.png', :level => :special}),
      Sponsor.new({:name => 'Manning Publications', :url => 'http://www.manning.com', :image_path => 'manning.png', :level => :special}),
      Sponsor.new({:name => 'ChaiONE', :url => 'http://www.chaione.com', :image_path => 'chaione.png', :level => :special}),
      Sponsor.new({:name => 'LogicNP Software', :url => 'http://www.logicnp.com', :image_path => 'logicnp.jpg', :level => :special})
    ]    
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
        @slots[session.slot_key] = [] if @slots[session.slot_key] == nil
        @slots[session.slot_key] << session
      end
    end

    @unassigned_sessions.sort! {|a,b| b.votes.to_i <=> a.votes.to_i }
  end

  def sponsors
    # Todo: replace with db
    @sponsors = [
      # Gold
      #Sponsor.new({:name => 'Microsoft', :url => 'http://www.microsoft.com', :image_path => 'sponsor.jpg', :level => :gold}),
      #Sponsor.new({:name => 'Headspring', :url => 'http://www.headspring.com', :image_path => 'headspring.jpg', :level => :gold}),
      #Sponsor.new({:name => 'ComponentOne', :url => 'http://www.componentone.com', :image_path => 'componentone.jpg', :level => :gold}),

      #Silver
      #Sponsor.new({:name => 'Telerik', :url => 'http://www.telerik.com', :image_path => 'telerik.png', :level => :silver}),
      #Sponsor.new({:name => 'Tekpub', :url => 'http://www.tekpub.com', :image_path => 'tekpub.jpg', :level => :silver}),
      #Sponsor.new({:name => 'Pluralsight', :url => 'http://www.pluralsight.com', :image_path => 'pluralsight.png', :level => :silver}),
      #Sponsor.new({:name => 'Snapstream', :url => 'http://www.snapstream.com', :image_path => 'snapstream.png', :level => :silver}),

      #Special Thanks
      #Sponsor.new({:name => 'Github', :url => 'http://www.github.com', :image_path => 'github.png', :level => :special}),
      #Sponsor.new({:name => 'The Pragmatic Bookshelf', :url => 'http://www.pragprog.com', :image_path => 'pragprog.png', :level => :special}),
      #Sponsor.new({:name => 'Code School', :url => 'http://www.codeschool.com', :image_path => 'codeschool.png', :level => :special}),
      #Sponsor.new({:name => "O'Reilly", :url => 'http://www.oreilly.com', :image_path => 'oreilly.png', :level => :special}),
      #Sponsor.new({:name => 'Manning Publications', :url => 'http://www.manning.com', :image_path => 'manning.png', :level => :special}),
      #Sponsor.new({:name => 'ChaiONE', :url => 'http://www.chaione.com', :image_path => 'chaione.png', :level => :special}),
      #Sponsor.new({:name => 'LogicNP Software', :url => 'http://www.logicnp.com', :image_path => 'logicnp.jpg', :level => :special})
    ]
  end
end
