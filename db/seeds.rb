# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
# bc = Venue.create({:name => 'Bottle and Cork'})
# kn = Promotion.create({:name => 'Kristen & the Noise'})
# ev1 = Event.create( {:promotion => kn, :venue => bc, :description => 'Jam Session', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00'})
# bc = Venue.create({:name => '', :description => '', :link => '', :address1 => '', :address2 => '', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone_number => '', :gps_coordinates => 'gps', :hours => '5pm-1am', :logo => 'logo'})
# gg = Promotion.create({:name => '', :description => '', :link => '', :kind => 'band', :logo => 'logo'})
# js = Event.create({:name => '', :description => '', :link => '', :venue_id => '', :promotion_id => '', :special_event_id => '', :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})
# special_events	id	name	description	link	logo	created_at	updated_at	special_event_start	special_event_end						
# events	id	name	description	link	logo	created_at	updated_at	venue_id	promotion_id	special_event_id	stage	event_start	event_end	is_all_day	
# venues	id	name	description	link	logo	created_at	updated_at	address1	address2	city	state	zip	phone_number	gps_coordinates	hours
# promotions	id	name	description	link	logo	created_at	updated_at	kind	related_promotion			
# When running rake db:seed, the runs are additive, so dupes will be created. do a rake db:reset instead			



bc = Venue.create({:name => 'Bottle and Cork', :description => 'The Bottle & Cork is a live music club established in 1936.', :link => 'http://www.deweybeachlife.com/', :address1 => '1807 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone_number => '302-227-7272', :hours => '5pm-1am', :logo => 'logo'})

nb = Venue.create({:name => 'Northbeach', :description => 'Northbeach offers casual indoor and outdoor dining overlooking Rehoboth Bay. Northbeach is open mid-May through Labor Day. Join us for great food, frozen drinks and beautiful sunsets.', :link => 'http://www.deweybeachlife.com/', :address1 => '125 McKinley Street & The Bay', :address2 => '', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone_number => '302-226-8673', :hours => '5pm-1am', :logo => 'logo'})

rr = Venue.create({:name => 'Rusty Rudder', :description => 'The Rudder is now open daily.  Join us for our famous all u can eat Land and Sea Buffet served Friday and Saturdays at 4:30.We have live entertainment weekly.', :link => 'http://www.deweybeachlife.com/', :address1 => '113 Dickinson Street & The Bay', :address2 => '', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone_number => '302-227-3888', :hours => '5pm-1am', :logo => 'logo'})

sb = Venue.create({:name => 'The Starboard', :description => 'John thinks it is too crowded.', :link => 'http://www.thestarboard.com/', :address1 => '2009 Highway One', :address2 => '', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone_number => '302-227-4600', :hours => '5pm-1am', :logo => 'logo'})

gg = Promotion.create({:name => 'Mr. Greengenes', :description => 'Coverband from Philadelphia', :link => 'http://www.mrgreengenes.com/', :kind => 1, :logo => 'logo'})

kn = Promotion.create({:name => 'Kristen And The Noise', :description => 'Coverband from Philadelphia', :link => 'http://www.kristenandthenoise.com/', :kind => 1, :logo => 'logo'})

la = Promotion.create({:name => 'Liquid A', :description => 'Coverband from Philadelphia', :link => 'http://www.liquida.net/', :kind => 1, :logo => 'logo'})

bs = Promotion.create({:name => 'Burnt Sienna', :description => 'Coverband from Philadelphia', :link => 'http://www.burntsiennaband.com/', :kind => 1, :logo => 'logo'})

ls = Promotion.create({:name => 'Love Seed Momma Jump', :description => 'Coverband from Philadelphia', :link => 'http://www.loveseed.com/', :kind => 1, :logo => 'logo'})

js1 = Event.create({:name => 'Jam Session', :description => 'Saturday Jam with three bands.', :link => 'http://www.deweybeachlife.com/', :venue => bc, :promotion => gg, :special_event_id => nil, :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})

tt1 = Event.create({:name => 'Taco Toss', :description => 'Friday happy hour featuring Orange Crushes and $1 tacos and hot dogs.', :link => 'http://www.ruddertowneusa.com/The-Lighthouse.html', :venue => nb, :promotion => nil, :special_event_id => '', :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})

tr1 = Event.create({:name => 'Thursday Night At The Rudder', :description => 'Thursday night show featuring Love Seed Momma Jump', :link => 'http://www.deweybeachlife.com/', :venue => rr, :promotion => ls, :special_event_id => nil, :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})

rb1 = Event.create({:name => 'Running Of The Bull', :description => 'Getting Drunk and chasing 2 guys in a bull costume', :link => 'http://www.thestarboard.com/', :venue => sb, :promotion => nil, :special_event_id => nil, :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})









