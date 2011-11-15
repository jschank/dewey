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
# bc = Venue.create({:name => '', :description => '', :url => '', :address1 => '', :address2 => '', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '', :gps_coordinates => 'gps', :hours => '5pm-1am', :logo => 'logo'})
# gg = Promotion.create({:name => '', :description => '', :url => '', :kind => 'band', :logo => 'logo'})
# js = Event.create({:name => '', :description => '', :url => '', :venue_id => '', :promotion_id => '', :special_event_id => '', :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})
# special_events	id	name	description	link	logo	created_at	updated_at	special_event_start	special_event_end						
# events	id	name	description	link	logo	created_at	updated_at	venue_id	promotion_id	special_event_id	stage	event_start	event_end	is_all_day	
# venues	id	name	description	link	logo	created_at	updated_at	address1	address2	city	state	zip	phone	gps_coordinates	hours
# promotions	id	name	description	link	logo	created_at	updated_at	kind	related_promotion			
# When running rake db:seed, the runs are additive, so dupes will be created. do a rake db:reset instead			


bc = Venue.create!({:name => 'Bottle and Cork', :description => 'The Bottle & Cork is a live music club established in 1936.', :url => 'http://www.deweybeachlife.com/', :address1 => '1807 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip_code => '19971', :phone => '302-227-7272'})

bc1 = bc.locations.build({:name => "Stage1"})
bc2 = bc.locations.build({:name => "Stage2"})
bc.save!

nb = Venue.create({:name => 'Northbeach', :description => 'Northbeach offers casual indoor and outdoor dining overlooking Rehoboth Bay. Northbeach is open mid-May through Labor Day. Join us for great food, frozen drinks and beautiful sunsets.', :url => 'http://www.deweybeachlife.com/', :address1 => '125 McKinley Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip_code => '19971', :phone => '302-226-8673'})

rr = Venue.create({:name => 'Rusty Rudder', :description => 'The Rudder is now open daily.  Join us for our famous all u can eat Land and Sea Buffet served Friday and Saturdays at 4:30.We have live entertainment weekly.', :url => 'http://www.deweybeachlife.com/', :address1 => '113 Dickinson Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip_code => '19971', :phone => '302-227-3888'})

sb = Venue.create({:name => 'The Starboard', :description => 'John thinks it is too crowded.', :url => 'http://www.thestarboard.com/', :address1 => '2009 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip_code => '19971', :phone => '302-227-4600'})

# Promotions

gg = Promotion.create({:name => 'Mr. Greengenes', :description => 'Coverband from Philadelphia', :url => 'http://www.mrgreengenes.com/'})
kn = Promotion.create({:name => 'Kristen And The Noise', :description => 'Coverband from Philadelphia', :url => 'http://www.kristenandthenoise.com/'})
la = Promotion.create({:name => 'Liquid A', :description => 'Coverband from Philadelphia', :url => 'http://www.liquida.net/'})
bs = Promotion.create({:name => 'Burnt Sienna', :description => 'Coverband from Philadelphia', :url => 'http://www.burntsiennaband.com/'})
ls = Promotion.create({:name => 'Love Seed Momma Jump', :description => 'Coverband from Philadelphia', :url => 'http://www.loveseed.com/'})

# Events

js1 = Event.create({:name => 'Jam Session', :description => 'Saturday Jam with three bands.', :url => 'http://www.deweybeachlife.com/'})

js1.features.build({:location => bc1, :promotion => gg, :start_time => '2011-10-01T19:00:00+00:00', :end_time => '2011-10-01T20:00:00+00:00'})
js1.features.build({:location => bc2, :promotion => kn, :start_time => '2011-10-01T20:00:00+00:00', :end_time => '2011-10-01T21:00:00+00:00'})
js1.features.build({:location => bc1, :promotion => bs, :start_time => '2011-10-01T21:00:00+00:00', :end_time => '2011-10-01T22:00:00+00:00'})
js1.save!
# Features
# Feature.build!( {})


# tt1 = Event.create({:name => 'Taco Toss', :description => 'Friday happy hour featuring Orange Crushes and $1 tacos and hot dogs.', :url => 'http://www.ruddertowneusa.com/The-Lighthouse.html', :venue => nb, :promotion => nil, :special_event_id => '', :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})
# 
# tr1 = Event.create({:name => 'Thursday Night At The Rudder', :description => 'Thursday night show featuring Love Seed Momma Jump', :url => 'http://www.deweybeachlife.com/', :venue => rr, :promotion => ls, :special_event_id => nil, :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})
# 
# rb1 = Event.create({:name => 'Running Of The Bull', :description => 'Getting Drunk and chasing 2 guys in a bull costume', :url => 'http://www.thestarboard.com/', :venue => sb, :promotion => nil, :special_event_id => nil, :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})









