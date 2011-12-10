# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

# special_events	id	name	description	link	logo	created_at	updated_at	special_event_start	special_event_end						
# events	id	name	description	link	logo	created_at	updated_at	venue_id	promotion_id	special_event_id	stage	event_start	event_end	is_all_day	
# venues	id	name	description	link	logo	created_at	updated_at	address1	address2	city	state	zip	phone	gps_coordinates	hours
# promotions	id	name	description	link	logo	created_at	updated_at	kind	related_promotion			
# When running rake db:seed, the runs are additive, so dupes will be created. do a rake db:reset instead			


# ***Venues***

# Bottle and Cork
bc = Venue.create!({:name => 'Bottle and Cork', :description => 'The Bottle & Cork is a live music club established in 1936.', :url => 'http://www.deweybeachlife.com/', :address1 => '1807 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip_code => '19971', :phone => '302-227-7272', :logo => 'cork-logo.png'})

bc1 = bc.locations.build({:name => ""})
bca = bc.locations.build({:name => "Stage A"})
bcb = bc.locations.build({:name => "Stage B"})
bc.save!

# Northbeach
nb = Venue.create({:name => 'Northbeach', :description => 'Northbeach offers casual indoor and outdoor dining overlooking Rehoboth Bay. Northbeach is open mid-May through Labor Day. Join us for great food, frozen drinks and beautiful sunsets.', :url => 'http://www.deweybeachlife.com/', :address1 => '125 McKinley Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip_code => '19971', :phone => '302-226-8673'})

nb1 = nb.locations.build({:name => ""})
nb.save!

# Lighthouse
lh = Venue.create({:name => 'Lighthouse', :description => 'Tall tower, bright light', :url => 'http://www.deweybeachlife.com/', :address1 => '2112 Shiny Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip_code => '19971', :phone => '302-555-1212'})

lh1 = lh.locations.build({:name => ""})
lh.save!

# Rusty Rudder
rr = Venue.create({:name => 'Rusty Rudder', :description => 'The Rudder is now open daily.  Join us for our famous all u can eat Land and Sea Buffet served Friday and Saturdays at 4:30.We have live entertainment weekly.', :url => 'http://www.deweybeachlife.com/', :address1 => '113 Dickinson Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip_code => '19971', :phone => '302-227-3888'})

rr1 = rr.locations.build({:name => ""})
rra = rr.locations.build({:name => "Stage A"})
rrb = rr.locations.build({:name => "Stage B"})
rrc = rr.locations.build({:name => "Stage C"})
rrd = rr.locations.build({:name => "Stage D"})
rr.save!

# Starboard
sb = Venue.create({:name => 'The Starboard', :description => 'John thinks it is too crowded.', :url => 'http://www.thestarboard.com/', :address1 => '2009 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip_code => '19971', :phone => '302-227-4600'})

sb1 = sb.locations.build({:name => ""})
sba = sb.locations.build({:name => "Main Stage"})
sbb = sb.locations.build({:name => "Deck Stage"})
sb.save!

# Jimmy's Grille
jg = Venue.create({:name => "Jimmy's Grille", :description => 'Outdoor Bar and Grille.', :url => 'http://www.deweybeachlife.com/', :address1 => 'Highway One and Bellevue Street', :city => 'Dewey Beach', :state => 'DE', :zip_code => '19971', :phone => '302-227-4600'})

jg1 = jg.locations.build({:name => ""})
jg.save!

# ***Promotions***

# Bands
gg = Promotion.create({:name => 'Mr. Greengenes', :description => 'Coverband from Philadelphia', :url => 'http://www.mrgreengenes.com/'})
kn = Promotion.create({:name => 'Kristen And The Noise', :description => 'Coverband from Philadelphia', :url => 'http://www.kristenandthenoise.com/'})
la = Promotion.create({:name => 'Liquid A', :description => 'Coverband from Philadelphia', :url => 'http://www.liquida.net/'})
bs = Promotion.create({:name => 'Burnt Sienna', :description => 'Coverband from Philadelphia', :url => 'http://www.burntsiennaband.com/'})
lsmj = Promotion.create({:name => 'Love Seed Momma Jump', :description => 'Coverband from Philadelphia', :url => 'http://www.loveseed.com/'})
ggg = Promotion.create({:name => 'Go Go Gadjet', :description => 'Coverband from Philadelphia', :url => 'http://www.gogogadjet.com/'})
tf = Promotion.create({:name => 'Laura Lea and Trip Fabulous', :description => 'Coverband', :url => 'http://www.trippfabulous.com/'})
sd = Promotion.create({:name => 'Split Decision', :description => 'Coverband', :url => 'http://www.splitdecision.com/'})
ek = Promotion.create({:name => 'Element K', :description => 'Coverband', :url => 'http://elementkband.com/'})
tt = Promotion.create({:name => 'Table Ten', :description => 'Coverband', :url => 'http://www.friendsoftableten.com/'})
ls = Promotion.create({:name => 'Lifespeed', :description => 'Coverband', :url => 'http://www.lifespeed.tv/'})
_3am = Promotion.create({:name => '3 am', :description => 'Coverband', :url => 'http://www.idontknow.com/'})
cr = Promotion.create({:name => 'Chorduroy', :description => 'Coverband', :url => 'http://www.chorduroyband.com/'})

# DJs
djs = Promotion.create({:name => 'DJ Smoky', :description => 'DJ', :url => 'http://smokythedj.com/'})
djjj = Promotion.create({:name => 'DJ Jazzy Jeff', :description => 'Fresh Prince\'s Sidekick', :url => 'http://www.apple.com/'})

# ***Events***

# Jam 1
js1 = Event.create({:name => 'Jam Session', :description => 'Saturday Jam with three bands.', :url => 'http://www.deweybeachlife.com/', :event_start => '2011-07-02T17:00:00+00:00', :event_end => '2011-07-03T01:00:00+00:00'})

js1.features.build({:location => bc1, :promotion => lsmj, :start_time => '2011-07-02T17:00:00+00:00', :end_time => '2011-07-03T01:00:00+00:00', :priority => 1})
js1.features.build({:location => bc1, :promotion => la, :start_time => '2011-07-02T17:00:00+00:00', :end_time => '2011-07-03T01:00:00+00:00', :priority => 2})
js1.features.build({:location => bc1, :promotion => ggg, :start_time => '2011-07-02T17:00:00+00:00', :end_time => '2011-07-03T01:00:00+00:00', :priority => 3})
js1.save!

# Jam 2
js2 = Event.create({:name => 'Jam Session', :description => 'Saturday Jam with three bands.', :url => 'http://www.deweybeachlife.com/', :event_start => '2011-07-09T17:00:00+00:00', :event_end => '2011-07-10T01:00:00+00:00'})

js2.features.build({:location => bc1, :promotion => gg, :start_time => '2011-07-09T17:00:00+00:00', :end_time => '2011-07-10T01:00:00+00:00', :priority => 3})
js2.features.build({:location => bc1, :promotion => bs, :start_time => '2011-07-09T17:00:00+00:00', :end_time => '2011-07-10T01:00:00+00:00', :priority => 1})
js2.features.build({:location => bc1, :promotion => sd, :start_time => '2011-07-09T17:00:00+00:00', :end_time => '2011-07-10T01:00:00+00:00', :priority => 2})
js2.save!

# Jam 3
js3 = Event.create({:name => 'Jam Session', :description => 'Saturday Jam with three bands.', :url => 'http://www.deweybeachlife.com/', :event_start => '2011-07-16T17:00:00+00:00', :event_end => '2011-07-17T01:00:00+00:00'})

js3.features.build({:location => bc1, :promotion => la, :start_time => '2011-07-16T17:00:00+00:00', :end_time => '2011-07-17T01:00:00+00:00', :priority => 1})
js3.features.build({:location => bc1, :promotion => ek, :start_time => '2011-07-16T17:00:00+00:00', :end_time => '2011-07-17T01:00:00+00:00', :priority => 2})
js3.features.build({:location => bc1, :promotion => tt, :start_time => '2011-07-16T17:00:00+00:00', :end_time => '2011-07-17T01:00:00+00:00', :priority => 3})
js3.save!

# Jam 4
js4 = Event.create({:name => 'Jam Session', :description => 'Saturday Jam with three bands.', :url => 'http://www.deweybeachlife.com/', :event_start => '2011-07-23T17:00:00+00:00', :event_end => '2011-07-24T01:00:00+00:00'})

js4.features.build({:location => bc1, :promotion => _3am, :start_time => '2011-07-23T17:00:00+00:00', :end_time => '2011-07-24T01:00:00+00:00', :priority => 1})
js4.features.build({:location => bc1, :promotion => ls, :start_time => '2011-07-23T17:00:00+00:00', :end_time => '2011-07-24T01:00:00+00:00', :priority => 2})
js4.features.build({:location => bc1, :promotion => la, :start_time => '2011-07-23T17:00:00+00:00', :end_time => '2011-07-24T01:00:00+00:00', :priority => 3})
js4.save!

# Jam 5
js5 = Event.create({:name => 'Jam Session', :description => 'Saturday Jam with three bands.', :url => 'http://www.deweybeachlife.com/', :event_start => '2011-07-30T17:00:00+00:00', :event_end => '2011-07-31T01:00:00+00:00'})

js5.features.build({:location => bc1, :promotion => kn, :start_time => '2011-07-30T17:00:00+00:00', :end_time => '2011-07-31T01:00:00+00:00', :priority => 1})
js5.features.build({:location => bc1, :promotion => ggg, :start_time => '2011-07-30T17:00:00+00:00', :end_time => '2011-07-31T01:00:00+00:00', :priority => 2})
js5.features.build({:location => bc1, :promotion => la, :start_time => '2011-07-30T17:00:00+00:00', :end_time => '2011-07-31T01:00:00+00:00', :priority => 3})
js5.save!

# Taco Toss 1
tt1 = Event.create({:name => 'Taco Toss', :description => 'Friday happy hour featuring Orange Crushes and $1 tacos and hot dogs.', :url => 'http://www.ruddertowneusa.com/The-Lighthouse.html', :logo => 'lighthouse-logo.png', :event_start => '2011-07-01T16:00:00+00:00', :event_end => '2011-07-01T21:00:00+00:00'})

tt1.features.build({:location => lh1, :promotion => djjj, :start_time => '2011-07-01T16:00:00+00:00', :end_time => '2011-07-01T21:00:00+00:00'})
tt1.save!

# Taco Toss 2
tt2 = Event.create({:name => 'Taco Toss', :description => 'Friday happy hour featuring Orange Crushes and $1 tacos and hot dogs.', :url => 'http://www.ruddertowneusa.com/The-Lighthouse.html', :logo => 'lighthouse-logo.png', :event_start => '2011-07-08T16:00:00+00:00', :event_end => '2011-07-08T21:00:00+00:00'})

tt2.features.build({:location => lh1, :promotion => djjj, :start_time => '2011-07-08T16:00:00+00:00', :end_time => '2011-07-08T21:00:00+00:00'})
tt2.save!

# Taco Toss 3
tt3 = Event.create({:name => 'Taco Toss', :description => 'Friday happy hour featuring Orange Crushes and $1 tacos and hot dogs.', :url => 'http://www.ruddertowneusa.com/The-Lighthouse.html', :logo => 'lighthouse-logo.png', :event_start => '2011-07-15T16:00:00+00:00', :event_end => '2011-07-15T21:00:00+00:00'})

tt3.features.build({:location => lh1, :promotion => djjj, :start_time => '2011-07-15T16:00:00+00:00', :end_time => '2011-07-15T21:00:00+00:00'})
tt3.save!

# Taco Toss 4
tt4 = Event.create({:name => 'Taco Toss', :description => 'Friday happy hour featuring Orange Crushes and $1 tacos and hot dogs.', :url => 'http://www.ruddertowneusa.com/The-Lighthouse.html', :logo => 'lighthouse-logo.png', :event_start => '2011-07-22T16:00:00+00:00', :event_end => '2011-07-22T21:00:00+00:00'})

tt4.features.build({:location => lh1, :promotion => djjj, :start_time => '2011-07-22T16:00:00+00:00', :end_time => '2011-07-22T21:00:00+00:00'})
tt4.save!

# Taco Toss 5
tt5 = Event.create({:name => 'Taco Toss', :description => 'Friday happy hour featuring Orange Crushes and $1 tacos and hot dogs.', :url => 'http://www.ruddertowneusa.com/The-Lighthouse.html', :logo => 'lighthouse-logo.png', :event_start => '2011-07-29T16:00:00+00:00', :event_end => '2011-07-29T21:00:00+00:00'})

tt5.features.build({:location => lh1, :promotion => djjj, :start_time => '2011-07-29T16:00:00+00:00', :end_time => '2011-07-29T21:00:00+00:00'})
tt5.save!

# Rusty Rudder Saturday Night Concert 1
scrr1 = Event.create({:description => 'Saturday Night Concert at the Rudder.', :url => 'http://www.deweybeachlife.com', :logo => 'rudder-logo.png', :event_start => '2011-07-02T21:00:00+00:00', :event_end => '2011-07-03T01:00:00+00:00'})

scrr1.features.build({:location => rr1, :promotion => kn, :start_time => '2011-07-02T21:00:00+00:00', :end_time => '2011-07-03T01:00:00+00:00'})
scrr1.save!

# Rusty Rudder Saturday Night Concert 2
scrr2 = Event.create({:name => '', :description => 'Saturday Night Concert at the Rudder.', :url => 'http://www.deweybeachlife.com', :logo => 'rudder-logo.png', :event_start => '2011-07-09T21:00:00+00:00', :event_end => '2011-07-10T01:00:00+00:00'})

scrr2.features.build({:location => rr1, :promotion => kn, :start_time => '2011-07-09T21:00:00+00:00', :end_time => '2011-07-10T01:00:00+00:00'})
scrr2.save!

# Rusty Rudder Saturday Night Concert 3
scrr3 = Event.create({:name => '', :description => 'Saturday Night Concert at the Rudder.', :url => 'http://www.deweybeachlife.com', :logo => 'rudder-logo.png', :event_start => '2011-07-16T21:00:00+00:00', :event_end => '2011-07-17T01:00:00+00:00'})

scrr3.features.build({:location => rr1, :promotion => gg, :start_time => '2011-07-16T21:00:00+00:00', :end_time => '2011-07-17T01:00:00+00:00'})
scrr3.save!

# Rusty Rudder Saturday Night Concert 4
scrr4 = Event.create({:name => '', :description => 'Saturday Night Concert at the Rudder.', :url => 'http://www.deweybeachlife.com', :logo => 'rudder-logo.png', :event_start => '2011-07-23T21:00:00+00:00', :event_end => '2011-07-24T01:00:00+00:00'})

scrr4.features.build({:location => rr1, :promotion => sd, :start_time => '2011-07-23T21:00:00+00:00', :end_time => '2011-07-24T01:00:00+00:00'})
scrr4.save!

# Rusty Rudder Saturday Night Concert 5
scrr5 = Event.create({:name => '', :description => 'Saturday Night Concert at the Rudder.', :url => 'http://www.deweybeachlife.com', :logo => 'rudder-logo.png', :event_start => '2011-07-30T21:00:00+00:00', :event_end => '2011-07-31T01:00:00+00:00'})

scrr5.features.build({:location => rr1, :promotion => cr, :start_time => '2011-07-30T21:00:00+00:00', :end_time => '2011-07-31T01:00:00+00:00'})
scrr5.save!

# 
# tr1 = Event.create({:name => 'Thursday Night At The Rudder', :description => 'Thursday night show featuring Love Seed Momma Jump', :url => 'http://www.deweybeachlife.com/', :venue => rr, :promotion => ls, :special_event_id => nil, :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})
# 
# rb1 = Event.create({:name => 'Running Of The Bull', :description => 'Getting Drunk and chasing 2 guys in a bull costume', :url => 'http://www.thestarboard.com/', :venue => sb, :promotion => nil, :special_event_id => nil, :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})









