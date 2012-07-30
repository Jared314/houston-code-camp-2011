class HomeController < ApplicationController
  def index
    @sponsors = get_sponsors
    @news = get_news
  end

  def registration
  end

  def speakers
  end

  def schedule
    @slots = {}
    Session.assigned.each do |session|
      @slots[session.slot_key] = [] if @slots[session.slot_key] == nil
      @slots[session.slot_key] << session
    end
  end

  def sponsors
    @sponsors = get_sponsors
  end

    # Todo: replace with db
  def get_sponsors
    [
      # Gold
      Sponsor.new({:name => 'Microsoft', :url => 'http://www.microsoft.com', :image_path => 'sponsor.jpg', :level => :gold}),
      Sponsor.new({:name => 'Kendo UI', :url => 'http://www.kendoui.com', :image_path => 'Kendo-logo-120x67.png', :level => :gold}),
      #Sponsor.new({:name => 'Headspring', :url => 'http://www.headspring.com', :image_path => 'headspring.jpg', :level => :gold}),
      #Sponsor.new({:name => 'ComponentOne', :url => 'http://www.componentone.com', :image_path => 'componentone.jpg', :level => :gold}),

      #Silver
      #Sponsor.new({:name => 'Telerik', :url => 'http://www.telerik.com', :image_path => 'telerik.png', :level => :silver}),
      #Sponsor.new({:name => 'Tekpub', :url => 'http://www.tekpub.com', :image_path => 'tekpub.jpg', :level => :silver}),
      #Sponsor.new({:name => 'Pluralsight', :url => 'http://www.pluralsight.com', :image_path => 'pluralsight.png', :level => :silver}),
      #Sponsor.new({:name => 'Snapstream', :url => 'http://www.snapstream.com', :image_path => 'snapstream.png', :level => :silver}),

      #Special Thanks
      Sponsor.new({:name => "O'Reilly", :url => 'http://www.oreilly.com', :image_path => 'oreilly.png', :level => :special}),
      Sponsor.new({:name => 'The Pragmatic Bookshelf', :url => 'http://www.pragprog.com', :image_path => 'pragprog.png', :level => :special}),
      Sponsor.new({:name => 'Saint Arnold Brewing Company', :url => 'http://www.saintarnold.com', :image_path => 'saint-arnold.png', :level => :special}),
      Sponsor.new({:name => 'Github', :url => 'http://www.github.com', :image_path => 'github.png', :level => :special}), 
      #Sponsor.new({:name => 'Code School', :url => 'http://www.codeschool.com', :image_path => 'codeschool.png', :level => :special}),
      #Sponsor.new({:name => 'Manning Publications', :url => 'http://www.manning.com', :image_path => 'manning.png', :level => :special}),
      #Sponsor.new({:name => 'ChaiONE', :url => 'http://www.chaione.com', :image_path => 'chaione.png', :level => :special}),
      #Sponsor.new({:name => 'LogicNP Software', :url => 'http://www.logicnp.com', :image_path => 'logicnp.jpg', :level => :special})
    ]    
  end

  def get_news
    [
      NewsItem.new({:date => 'Mar 8th, 2012', :body => 'Planning for the 2012 Houston Code Camp has begun. Check back here for the latest news.'}),
      NewsItem.new({:date => 'July 10th, 2012', :body => 'The date is now finalized <br/>for Saturday August 25th, 2012. Mark your calendars!'}),
    ]
  end

end
