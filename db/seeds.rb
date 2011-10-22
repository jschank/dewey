# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
bc = Venue.create({:name => 'Bottle and Cork'})
kn = Promotion.create({:name => 'Kristen & the Noise'})
ev1 = Event.create( {:promotion => kn, :venue => bc, :description => 'Jam Session', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00'})
