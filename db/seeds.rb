# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
speaker1 = Speaker.create({name:'Peter', email:'peter@pseale.com', bio:'I\'m very important. I have many leather-bound books, and my apartment smells of rich mahogany.'})
Session.create([ {
  slot_key:'915ConferenceRoom1',
  name:'Script like a neckbeard with PowerShell', 
  abstract:'Learn to script like a true Unix neckbeard! In Windows! This session is hands-on as we walk through common developer/devops scripting tasks. Having witnessed such genius, you will not leave the same. Come prepared like an astronaut and wear adult diapers--you won\'t want to leave for ANY reason!', 
  speaker: speaker1}])
Session.create([ {
  name:'TFS Airing Of Grievances', 
  abstract:'Let it all out! Whether you\'re at wit\'s end dealing with TFS source control, fed up with TFS Build, don\'t like dealing with work items, or just plain angry at ALM--this is the session for you!',
  speaker: speaker1}])
