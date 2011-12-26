# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

# special_events  id  name  description link  logo  created_at  updated_at  special_event_start special_event_end
# events  id  name  description link  logo  created_at  updated_at  venue_id  performance_id  special_event_id  stage event_start event_end is_all_day
# venues  id  name  description link  logo  created_at  updated_at  address1  address2  city  state zip phone gps_coordinates hours
# performances  id  name  description link  logo  created_at  updated_at  kind  related_performance
# When running rake db:seed, the runs are additive, so dupes will be created. do a rake db:reset instead


# ***Venues***

# Bottle and Cork
bc = Venue.create!({:name => 'Bottle and Cork', :description => 'The Bottle & Cork is a live music club established in 1936.', :website => 'http://www.deweybeachlife.com/', :address1 => '1807 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-7272', :logo => 'cork-logo.png'})
bc1 = bc.locations.build({:name => "default"})
bca = bc.locations.build({:name => "Stage A"})
bcb = bc.locations.build({:name => "Stage B"})
bc.save!

# Northbeach
nb = Venue.create({:name => 'Northbeach', :description => 'Northbeach offers casual indoor and outdoor dining overlooking Rehoboth Bay. Northbeach is open mid-May through Labor Day. Join us for great food, frozen drinks and beautiful sunsets.', :website => 'http://www.deweybeachlife.com/', :address1 => '125 McKinley Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-226-8673'})
nb1 = nb.locations.build({:name => "default"})
nb.save!

# Lighthouse
lh = Venue.create({:name => 'Lighthouse', :description => 'Tall tower, bright light', :website => 'http://www.deweybeachlife.com/', :address1 => '2112 Shiny Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-555-1212', :logo => 'lighthouse-logo.png'})
lh1 = lh.locations.build({:name => "default"})
lh.save!

# Rusty Rudder
rr = Venue.create({:name => 'Rusty Rudder', :description => 'The Rudder is now open daily.  Join us for our famous all u can eat Land and Sea Buffet served Friday and Saturdays at 4:30.We have live entertainment weekly.', :website => 'http://www.deweybeachlife.com/', :address1 => '113 Dickinson Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-3888', :logo => 'rudder-logo.png' })
rr1 = rr.locations.build({:name => "default"})
rra = rr.locations.build({:name => "Stage A"})
rrb = rr.locations.build({:name => "Stage B"})
rrc = rr.locations.build({:name => "Stage C"})
rrd = rr.locations.build({:name => "Stage D"})
rr.save!

# Starboard
sb = Venue.create({:name => 'The Starboard', :description => 'John thinks it is too crowded.', :website => 'http://www.thestarboard.com/', :address1 => '2009 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-4600'})
sb1 = sb.locations.build({:name => "default"})
sba = sb.locations.build({:name => "Main Stage"})
sbb = sb.locations.build({:name => "Deck Stage"})
sb.save!

# Jimmy's Grille
jg = Venue.create({:name => "Jimmy's Grille", :description => 'Outdoor Bar and Grille.', :website => 'http://www.deweybeachlife.com/', :address1 => 'Highway One and Bellevue Street', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-4600'})
jg1 = jg.locations.build({:name => "default"})
jg.save!

# ***Acts***

# Bands
gg = Act.create({:logo => 'greengenes-logo.png', :name => 'Mr. Greengenes', :description => 'Coverband from Philadelphia', :website => 'http://www.mrgreengenes.com/'})
gg.save!

kn = Act.create({:logo => 'kristennoise-logo.png', :name => 'Kristen And The Noise', :description => 'Coverband from Philadelphia', :website => 'http://www.kristenandthenoise.com/'})
kn.save!

la = Act.create({:logo => 'liquida-logo.png', :name => 'Liquid A', :description => 'Coverband from Philadelphia', :website => 'http://www.liquida.net/'})
la.save!

bs = Act.create({:logo => 'burntsienna-logo.png', :name => 'Burnt Sienna', :description => 'Coverband from Philadelphia', :website => 'http://www.burntsiennaband.com/'})
bs.save!

lsmj = Act.create({:logo => 'loveseed-logo.png', :name => 'Love Seed Momma Jump', :logo => 'loveseed-logo.png', :description => 'Coverband from Philadelphia', :website => 'http://www.loveseed.com/'})
lsmj.save!

ggg = Act.create({:logo => 'gogogadjet-logo.png', :name => 'Go Go Gadjet', :description => 'Coverband from Philadelphia', :website => 'http://www.gogogadjet.com/'})
ggg.save!

tf = Act.create({:name => 'Laura Lea and Trip Fabulous', :description => 'Coverband', :website => 'http://www.trippfabulous.com/'})
tf.save!

sd = Act.create({:logo => 'splitdecision-logo.png', :name => 'Split Decision', :description => 'Coverband', :website => 'http://www.splitdecision.com/'})
sd.save!

ek = Act.create({:logo => 'elementk-logo.png', :name => 'Element K', :description => 'Coverband', :website => 'http://elementkband.com/'})
ek.save!

t10 = Act.create({:logo => 'tableten-logo.png', :name => 'Table Ten', :description => 'Coverband', :website => 'http://www.friendsoftableten.com/'})
t10.save!

ls = Act.create({:logo => 'lifespeed-logo.png', :name => 'Lifespeed', :description => 'Coverband from New Jersey', :website => 'http://www.lifespeed.tv/'})
ls.save!

_3am = Act.create({:logo => '3am-logo.png', :name => '3 am (formerly Full Effect)', :description => 'Coverband', :website => 'http://www.idontknow.com/'})
_3am.save!

cr = Act.create({:logo => 'chorduroy-logo.png', :name => 'Chorduroy', :description => 'Coverband', :website => 'http://www.chorduroyband.com/'})
cr.save!

tb = Act.create({:logo => 'bangles-logo.png', :name => 'The Bangles', :description => 'It was 30 years ago that guitarists Susanna Hoffs and Vicki Peterson and drummer Debbi Peterson formed the Bangles in a Brentwood, California, garage.', :website => 'http://www.thebangles.com/'})
tb.save!

as = Act.create({:logo => 'aprilsmith-logo.png', :name => 'April Smith And The Great Picture Show', :description => 'This Brooklyn musician turns out sultry updates ragtime and swing, pouring her rich voice over tight guitar strumming.', :website => 'http://www.aprilsmithmusic.com/'})
as.save!

gc = Act.create({:logo => 'georgeclinton-logo.png', :name => 'George Clinton & Parliament Funkadelic', :description => 'Godfather of Funk.', :website => 'http://www.georgeclinton.com/'})
gc.save!

# DJs
djs = Act.create({:logo => 'djjazzyjeff-logo.png', :name => 'DJ Smoky', :description => 'DJ', :website => 'http://smokythedj.com/'})
djs.save!

djjj = Act.create({:logo => 'djsmoky-logo.png', :name => 'DJ Jazzy Jeff', :description => 'Fresh Prince\'s Sidekick', :website => 'http://www.apple.com/'})
djjj.save!

#the_bangles = Act.create({:name => 'The Bangles', :description => 'It was 30 years ago that guitarists Susanna Hoffs and Vicki Peterson and drummer Debbi Peterson formed the Bangles in a Brentwood, California, garage.', :website => 'http://www.deweybeachfest.com/dbcf_cork.html'})
#the_bangles.save!

#george_clinton = Act.create({:name => 'George Clinton & Parliament Funkadelic', :description => 'Godfather of Funk.', :website => 'http://www.deweybeachfest.com/dbcf_cork.html'})

# ***Events***

# Jam Session
js = Event.create({:logo => 'jam-logo.png', :name => 'Jam Session', :description => 'Saturday Jam with three bands.', :website => 'http://www.deweybeachlife.com/'})
js.save!

# Taco Toss
tt = Event.create({:logo => 'rudder-logo.png', :name => 'Taco Toss', :description => 'Friday happy hour featuring Orange Crushes and $1 tacos and hot dogs.', :website => 'http://www.ruddertowneusa.com/The-Lighthouse.html', :logo => 'tacotoss-logo.png' })
tt.save!

# Rudder's Saturday Night Concert
scrr = Event.create({:logo => 'rudder-logo.png', :name => "Rudder's Saturday Night Concert", :description => 'Saturday Night Concert at the Rudder.', :website => 'http://www.deweybeachlife.com'})
scrr.save!

# The Bangles
tb_concert = Event.create({:logo => 'cork-logo.png', :name => 'The Bangles in Concert', :description => 'a night with the bangles', :website => 'http://www.deweybeachfest.com/dbcf_cork.html'})
tb_concert.save!

# George Clinton
gc_concert = Event.create({:logo => 'cork-logo.png', :name => 'George Clinton & Parliament Funkadelic Concert', :description => 'Up for the down stroke', :website => 'http://www.deweybeachfest.com/dbcf_cork.html'})
gc_concert.save!


# ***Occurrences***

# Jam 1
js1 = js.occurrences.build({:event_start => '2011-07-02T17:00:00+00:00', :event_end => '2011-07-03T01:00:00+00:00'})
js1.save!

# Jam 2
js2 = js.occurrences.build({:event_start => '2011-07-09T17:00:00+00:00', :event_end => '2011-07-10T01:00:00+00:00'})
js2.save!

# Jam 3
js3 = js.occurrences.build({:event_start => '2011-07-16T17:00:00+00:00', :event_end => '2011-07-17T01:00:00+00:00'})
js3.save!

# Jam 4
js4 = js.occurrences.build({:event_start => '2011-07-23T17:00:00+00:00', :event_end => '2011-07-24T01:00:00+00:00'})
js4.save!

# Jam 5
js5 = js.occurrences.build({:event_start => '2011-07-30T17:00:00+00:00', :event_end => '2011-07-31T01:00:00+00:00'})
js5.save!

# Taco Toss 1
tt1 = tt.occurrences.build({:event_start => '2011-07-01T16:00:00+00:00', :event_end => '2011-07-01T21:00:00+00:00'})
tt1.save!

# Taco Toss 2
tt2 = tt.occurrences.build({:event_start => '2011-07-08T16:00:00+00:00', :event_end => '2011-07-08T21:00:00+00:00'})
tt2.save!

# Taco Toss 3
tt3 = tt.occurrences.build({:event_start => '2011-07-15T16:00:00+00:00', :event_end => '2011-07-15T21:00:00+00:00'})
tt3.save!

# Taco Toss 4
tt4 = tt.occurrences.build({:event_start => '2011-07-22T16:00:00+00:00', :event_end => '2011-07-22T21:00:00+00:00'})
tt4.save!

# Taco Toss 5
tt5 = tt.occurrences.build({:event_start => '2011-07-29T16:00:00+00:00', :event_end => '2011-07-29T21:00:00+00:00'})
tt5.save!

# Rusty Rudder Saturday Night Concert 1
scrr1 = scrr.occurrences.build({:event_start => '2011-07-02T21:00:00+00:00', :event_end => '2011-07-03T01:00:00+00:00'})
scrr1.save!

# Rusty Rudder Saturday Night Concert 2
scrr2 = scrr.occurrences.build({:event_start => '2011-07-09T21:00:00+00:00', :event_end => '2011-07-10T01:00:00+00:00'})
scrr2.save!

# Rusty Rudder Saturday Night Concert 3
scrr3 = scrr.occurrences.build({:event_start => '2011-07-16T21:00:00+00:00', :event_end => '2011-07-17T01:00:00+00:00'})
scrr3.save!

# Rusty Rudder Saturday Night Concert 4
scrr4 = scrr.occurrences.build({:event_start => '2011-07-23T21:00:00+00:00', :event_end => '2011-07-24T01:00:00+00:00'})
scrr4.save!

# Rusty Rudder Saturday Night Concert 5
scrr5 = scrr.occurrences.build({:event_start => '2011-07-30T21:00:00+00:00', :event_end => '2011-07-31T01:00:00+00:00'})
scrr5.save!

# The Bangles
tb1 = tb_concert.occurrences.build({:event_start => '2011-07-05T20:00:00+00:00', :event_end => '2011-07-06T01:00:00+00:00'})
tb1.save!

# George Clinton
gc1 = gc_concert.occurrences.build({:event_start => '2011-07-23T20:00:00+00:00', :event_end => '2011-07-24T01:00:00+00:00'})
gc1.save!


# ***Performances***

# Jam 1
js1.performances.build({:location => bc1, :act => lsmj, :priority => 1, :performance_start => '2011-07-02T17:00:00+00:00', :performance_end => '2011-07-03T01:00:00+00:00'}).save!
js1.performances.build({:location => bc1, :act => la,   :priority => 2, :performance_start => '2011-07-02T17:00:00+00:00', :performance_end => '2011-07-03T01:00:00+00:00'}).save!
js1.performances.build({:location => bc1, :act => ggg,  :priority => 1, :performance_start => '2011-07-02T17:00:00+00:00', :performance_end => '2011-07-03T01:00:00+00:00'}).save!

# Jam 2
js2.performances.build({:location => bc1, :act => gg, :priority => 3, :performance_start => '2011-07-09T17:00:00+00:00', :performance_end => '2011-07-10T01:00:00+00:00'}).save!
js2.performances.build({:location => bc1, :act => bs, :priority => 1, :performance_start => '2011-07-09T17:00:00+00:00', :performance_end => '2011-07-10T01:00:00+00:00'}).save!
js2.performances.build({:location => bc1, :act => sd, :priority => 2, :performance_start => '2011-07-09T17:00:00+00:00', :performance_end => '2011-07-10T01:00:00+00:00'}).save!

# Jam 3
js3.performances.build({:location => bc1, :act => la,  :priority => 1, :performance_start => '2011-07-16T17:00:00+00:00', :performance_end => '2011-07-17T01:00:00+00:00'}).save!
js3.performances.build({:location => bc1, :act => ek,  :priority => 2, :performance_start => '2011-07-16T17:00:00+00:00', :performance_end => '2011-07-17T01:00:00+00:00'}).save!
js3.performances.build({:location => bc1, :act => t10, :priority => 3, :performance_start => '2011-07-16T17:00:00+00:00', :performance_end => '2011-07-17T01:00:00+00:00'}).save!

# Jam 4
js4.performances.build({:location => bc1, :act => _3am, :priority => 1, :performance_start => '2011-07-23T17:00:00+00:00', :performance_end => '2011-07-24T01:00:00+00:00'}).save!
js4.performances.build({:location => bc1, :act => ls,   :priority => 2, :performance_start => '2011-07-23T17:00:00+00:00', :performance_end => '2011-07-24T01:00:00+00:00'}).save!
js4.performances.build({:location => bc1, :act => la,   :priority => 3, :performance_start => '2011-07-23T17:00:00+00:00', :performance_end => '2011-07-24T01:00:00+00:00'}).save!

# Jam 5
js5.performances.build({:location => bc1, :act => kn,  :priority => 1, :performance_start => '2011-07-30T17:00:00+00:00', :performance_end => '2011-07-31T01:00:00+00:00'}).save!
js5.performances.build({:location => bc1, :act => ggg, :priority => 2, :performance_start => '2011-07-30T17:00:00+00:00', :performance_end => '2011-07-31T01:00:00+00:00'}).save!
js5.performances.build({:location => bc1, :act => la,  :priority => 3, :performance_start => '2011-07-30T17:00:00+00:00', :performance_end => '2011-07-31T01:00:00+00:00'}).save!

# Taco Toss 1
tt1.performances.build({:location => lh1, :act => djjj, :performance_start => '2011-07-01T16:00:00+00:00', :performance_end => '2011-07-01T21:00:00+00:00' }).save!

# Taco Toss 2
tt2.performances.build({:location => lh1, :act => djjj, :performance_start => '2011-07-08T16:00:00+00:00', :performance_end => '2011-07-08T21:00:00+00:00' }).save!

# Taco Toss 3
tt3.performances.build({:location => lh1, :act => djjj, :performance_start => '2011-07-15T16:00:00+00:00', :performance_end => '2011-07-15T21:00:00+00:00' }).save!

# Taco Toss 4
tt4.performances.build({:location => lh1, :act => djjj, :performance_start => '2011-07-22T16:00:00+00:00', :performance_end => '2011-07-22T21:00:00+00:00' }).save!

# Taco Toss 5
tt5.performances.build({:location => lh1, :act => djjj, :performance_start => '2011-07-29T16:00:00+00:00', :performance_end => '2011-07-29T21:00:00+00:00' }).save!


# Rusty Rudder Saturday Night Concert 1
scrr1.performances.build({:location => rr1, :act => kn, :performance_start => '2011-07-02T21:00:00+00:00', :performance_end => '2011-07-03T01:00:00+00:00' }).save!

# Rusty Rudder Saturday Night Concert 2
scrr2.performances.build({:location => rr1, :act => kn, :performance_start => '2011-07-09T21:00:00+00:00', :performance_end => '2011-07-10T01:00:00+00:00' }).save!

# Rusty Rudder Saturday Night Concert 3
scrr3.performances.build({:location => rr1, :act => gg, :performance_start => '2011-07-16T21:00:00+00:00', :performance_end => '2011-07-17T01:00:00+00:00' }).save!

# Rusty Rudder Saturday Night Concert 4
scrr4.performances.build({:location => rr1, :act => sd, :performance_start => '2011-07-23T21:00:00+00:00', :performance_end => '2011-07-24T01:00:00+00:00' }).save!

# Rusty Rudder Saturday Night Concert 5
scrr5.performances.build({:location => rr1, :act => cr, :performance_start => '2011-07-30T21:00:00+00:00', :performance_end => '2011-07-31T01:00:00+00:00' }).save!

# The Bangles
tb1.performances.build({:location => bc1, :act => tb, :priority => 0, :performance_start => '2011-07-05T22:00:00+00:00', :performance_end => '2011-07-06T01:00:00+00:00' }).save!
tb1.performances.build({:location => bc1, :act => as,          :priority => 1, :performance_start => '2011-07-05T21:00:00+00:00', :performance_end => '2011-07-05T21:40:00+00:00' }).save!

# George Clinton
gc1.performances.build({:location => bc1, :act => gc, :priority => 0, :performance_start => '2011-07-23T21:00:00+00:00', :performance_end => '2011-07-24T01:00:00+00:00' }).save!









