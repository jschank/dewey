# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

# special_events  id  name  description link  logo  created_at  updated_at  special_event_start special_event_end
# events  id  name  description link  logo  created_at  updated_at  venue_id  promotion_id  special_event_id  stage event_start event_end is_all_day
# venues  id  name  description link  logo  created_at  updated_at  address1  address2  city  state zip phone gps_coordinates hours
# promotions  id  name  description link  logo  created_at  updated_at  kind  related_promotion
# When running rake db:seed, the runs are additive, so dupes will be created. do a rake db:reset instead


# ***Venues***

# Bottle and Cork
bc = Venue.create!({:name => 'Bottle and Cork', :description => 'The Bottle & Cork is a live music club established in 1936.', :website => 'http://www.deweybeachlife.com/', :address1 => '1807 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-7272', :logo => 'cork-logo.png'})
bc1 = bc.locations.build()
bca = bc.locations.build({:name => "Stage A"})
bcb = bc.locations.build({:name => "Stage B"})
bc.save!

# Northbeach
nb = Venue.create({:name => 'Northbeach', :description => 'Northbeach offers casual indoor and outdoor dining overlooking Rehoboth Bay. Northbeach is open mid-May through Labor Day. Join us for great food, frozen drinks and beautiful sunsets.', :website => 'http://www.deweybeachlife.com/', :address1 => '125 McKinley Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-226-8673'})
nb1 = nb.locations.build()
nb.save!

# Lighthouse
lh = Venue.create({:name => 'Lighthouse', :description => 'Tall tower, bright light', :website => 'http://www.deweybeachlife.com/', :address1 => '2112 Shiny Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-555-1212', :logo => 'lighthouse-logo.png'})
lh1 = lh.locations.build()
lh.save!

# Rusty Rudder
rr = Venue.create({:name => 'Rusty Rudder', :description => 'The Rudder is now open daily.  Join us for our famous all u can eat Land and Sea Buffet served Friday and Saturdays at 4:30.We have live entertainment weekly.', :website => 'http://www.deweybeachlife.com/', :address1 => '113 Dickinson Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-3888', :logo => 'rudder-logo.png' })
rr1 = rr.locations.build()
rra = rr.locations.build({:name => "Stage A"})
rrb = rr.locations.build({:name => "Stage B"})
rrc = rr.locations.build({:name => "Stage C"})
rrd = rr.locations.build({:name => "Stage D"})
rr.save!

# Starboard
sb = Venue.create({:name => 'The Starboard', :description => 'John thinks it is too crowded.', :website => 'http://www.thestarboard.com/', :address1 => '2009 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-4600'})
sb1 = sb.locations.build()
sba = sb.locations.build({:name => "Main Stage"})
sbb = sb.locations.build({:name => "Deck Stage"})
sb.save!

# Jimmy's Grille
jg = Venue.create({:name => "Jimmy's Grille", :description => 'Outdoor Bar and Grille.', :website => 'http://www.deweybeachlife.com/', :address1 => 'Highway One and Bellevue Street', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-4600'})
jg1 = jg.locations.build()
jg.save!

# ***Promotions***

# Bands
gg = Promotion.create({:name => 'Mr. Greengenes', :description => 'Coverband from Philadelphia', :website => 'http://www.mrgreengenes.com/'})
gg.save!

kn = Promotion.create({:name => 'Kristen And The Noise', :description => 'Coverband from Philadelphia', :website => 'http://www.kristenandthenoise.com/'})
kn.save!

la = Promotion.create({:name => 'Liquid A', :description => 'Coverband from Philadelphia', :website => 'http://www.liquida.net/'})
la.save!

bs = Promotion.create({:name => 'Burnt Sienna', :description => 'Coverband from Philadelphia', :website => 'http://www.burntsiennaband.com/'})
bs.save!

lsmj = Promotion.create({:name => 'Love Seed Momma Jump', :description => 'Coverband from Philadelphia', :website => 'http://www.loveseed.com/'})
lsmj.save!

ggg = Promotion.create({:name => 'Go Go Gadjet', :description => 'Coverband from Philadelphia', :website => 'http://www.gogogadjet.com/'})
ggg.save!

tf = Promotion.create({:name => 'Laura Lea and Trip Fabulous', :description => 'Coverband', :website => 'http://www.trippfabulous.com/'})
tf.save!

sd = Promotion.create({:name => 'Split Decision', :description => 'Coverband', :website => 'http://www.splitdecision.com/'})
sd.save!

ek = Promotion.create({:name => 'Element K', :description => 'Coverband', :website => 'http://elementkband.com/'})
ek.save!

t10 = Promotion.create({:name => 'Table Ten', :description => 'Coverband', :website => 'http://www.friendsoftableten.com/'})
t10.save!

ls = Promotion.create({:name => 'Lifespeed', :description => 'Coverband', :website => 'http://www.lifespeed.tv/'})
ls.save!

_3am = Promotion.create({:name => '3 am', :description => 'Coverband', :website => 'http://www.idontknow.com/'})
_3am.save!

cr = Promotion.create({:name => 'Chorduroy', :description => 'Coverband', :website => 'http://www.chorduroyband.com/'})
cr.save!

tb = Promotion.create({:name => 'The Bangles', :description => 'It was 30 years ago that guitarists Susanna Hoffs and Vicki Peterson and drummer Debbi Peterson formed the Bangles in a Brentwood, California, garage.', :website => 'http://www.thebangles.com/'})
tb.save!

as = Promotion.create({:name => 'April Smith And The Great Picture Show', :description => 'This Brooklyn musician turns out sultry updates ragtime and swing, pouring her rich voice over tight guitar strumming.', :website => 'http://www.aprilsmithmusic.com/'})
as.save!

gc = Promotion.create({:name => 'George Clinton & Parliament Funkadelic', :description => 'Godfather of Funk.', :website => 'http://www.georgeclinton.com/'})
gc.save!

# DJs
djs = Promotion.create({:name => 'DJ Smoky', :description => 'DJ', :website => 'http://smokythedj.com/'})
djs.save!

djjj = Promotion.create({:name => 'DJ Jazzy Jeff', :description => 'Fresh Prince\'s Sidekick', :website => 'http://www.apple.com/'})
djjj.save!

the_bangles = Promotion.create({:name => 'The Bangles', :description => 'It was 30 years ago that guitarists Susanna Hoffs and Vicki Peterson and drummer Debbi Peterson formed the Bangles in a Brentwood, California, garage.', :website => 'http://www.deweybeachfest.com/dbcf_cork.html'})
the_bangles.save!

george_clinton = Promotion.create({:name => 'George Clinton & Parliament Funkadelic', :description => 'Godfather of Funk.', :website => 'http://www.deweybeachfest.com/dbcf_cork.html'})

# ***Events***

# Jam Session
js = Event.create({:name => 'Jam Session', :description => 'Saturday Jam with three bands.', :website => 'http://www.deweybeachlife.com/'})
js.save!

# Taco Toss
tt = Event.create({:name => 'Taco Toss', :description => 'Friday happy hour featuring Orange Crushes and $1 tacos and hot dogs.', :website => 'http://www.ruddertowneusa.com/The-Lighthouse.html', :logo => 'tacotoss-logo.png' })
tt.save!

# Rudder's Saturday Night Concert
scrr = Event.create({:name => "Rudder's Saturday Night Concert", :description => 'Saturday Night Concert at the Rudder.', :website => 'http://www.deweybeachlife.com'})
scrr.save!

# The Bangles
tb_concert = Event.create({:name => 'The Bangles in Concert', :description => 'a night with the bangles', :website => 'http://www.deweybeachfest.com/dbcf_cork.html'})
tb_concert.save!

# George Clinton
gc_concert = Event.create({:name => 'George Clinton & Parliament Funkadelic Concert', :description => 'Up for the down stroke', :website => 'http://www.deweybeachfest.com/dbcf_cork.html'})
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
lsmj1 = lsmj.performances.build({:promotion_start => '2011-07-02T17:00:00+00:00', :promotion_end => '2011-07-03T01:00:00+00:00'})
lsmj1.save!

la1 = la.performances.build({:promotion_start => '2011-07-02T17:00:00+00:00', :promotion_end => '2011-07-03T01:00:00+00:00'})
la1.save!

la2 = la.performances.build({:promotion_start => '2011-07-16T17:00:00+00:00', :promotion_end => '2011-07-17T01:00:00+00:00'})
la2.save!

la3 = la.performances.build({:promotion_start => '2011-07-23T17:00:00+00:00', :promotion_end => '2011-07-24T01:00:00+00:00'})
la3.save!

la4 = la.performances.build({:promotion_start => '2011-07-30T17:00:00+00:00', :promotion_end => '2011-07-31T01:00:00+00:00'})
la4.save!

ggg1 = ggg.performances.build({:promotion_start => '2011-07-02T17:00:00+00:00', :promotion_end => '2011-07-03T01:00:00+00:00'})
ggg1.save!

ggg2 = ggg.performances.build({:promotion_start => '2011-07-30T17:00:00+00:00', :promotion_end => '2011-07-31T01:00:00+00:00'})
ggg2.save!

gg1 = gg.performances.build({:promotion_start => '2011-07-09T17:00:00+00:00', :promotion_end => '2011-07-10T01:00:00+00:00'})
gg1.save!

gg2 = gg.performances.build({:promotion_start => '2011-07-16T21:00:00+00:00', :promotion_end => '2011-07-17T01:00:00+00:00'})
gg2.save!

bs1 = bs.performances.build({:promotion_start => '2011-07-09T17:00:00+00:00', :promotion_end => '2011-07-10T01:00:00+00:00'})
bs1.save!

sd1 = sd.performances.build({:promotion_start => '2011-07-09T17:00:00+00:00', :promotion_end => '2011-07-10T01:00:00+00:00'})
sd1.save!

ek1 = ek.performances.build({:promotion_start => '2011-07-16T17:00:00+00:00', :promotion_end => '2011-07-17T01:00:00+00:00'})
ek1.save!

t10_1 = t10.performances.build({:promotion_start => '2011-07-16T17:00:00+00:00', :promotion_end => '2011-07-17T01:00:00+00:00'})
t10_1.save!

_3am1 = _3am.performances.build({:promotion_start => '2011-07-23T17:00:00+00:00', :promotion_end => '2011-07-24T01:00:00+00:00'})
_3am1.save!

ls1 = ls.performances.build({:promotion_start => '2011-07-23T17:00:00+00:00', :promotion_end => '2011-07-24T01:00:00+00:00'})
ls1.save!

kn1 = kn.performances.build({:promotion_start => '2011-07-30T17:00:00+00:00', :promotion_end => '2011-07-31T01:00:00+00:00'})
kn1.save!

kn2 = kn.performances.build({:promotion_start => '2011-07-02T21:00:00+00:00', :promotion_end => '2011-07-03T01:00:00+00:00'})
kn2.save!

kn3 = kn.performances.build({:promotion_start => '2011-07-09T21:00:00+00:00', :promotion_end => '2011-07-10T01:00:00+00:00'})
kn3.save!

djjj1 = djjj.performances.build({:promotion_start => '2011-07-01T16:00:00+00:00', :promotion_end => '2011-07-01T21:00:00+00:00'})
djjj1.save!

djjj2 = djjj.performances.build({:promotion_start => '2011-07-08T16:00:00+00:00', :promotion_end => '2011-07-08T21:00:00+00:00'})
djjj2.save!

djjj3 = djjj.performances.build({:promotion_start => '2011-07-15T16:00:00+00:00', :promotion_end => '2011-07-15T21:00:00+00:00'})
djjj3.save!

djjj4 = djjj.performances.build({:promotion_start => '2011-07-22T16:00:00+00:00', :promotion_end => '2011-07-22T21:00:00+00:00'})
djjj4.save!

djjj5 = djjj.performances.build({:promotion_start => '2011-07-29T16:00:00+00:00', :promotion_end => '2011-07-29T21:00:00+00:00'})
djjj5.save!

sd1 = sd.performances.build({:promotion_start => '2011-07-23T21:00:00+00:00', :promotion_end => '2011-07-24T01:00:00+00:00'})
sd1.save!

cr1 = cr.performances.build({:promotion_start => '2011-07-30T21:00:00+00:00', :promotion_end => '2011-07-31T01:00:00+00:00'})
cr1.save!

tb_perf = the_bangles.performances.build({:promotion_start => '2011-07-05T22:00:00+00:00', :promotion_end => '2011-07-06T01:00:00+00:00'})
tb_perf.save!

as1 = as.performances.build({:promotion_start => '2011-07-05T21:00:00+00:00', :promotion_end => '2011-07-05T21:40:00+00:00'})
as1.save!

gc_perf = george_clinton.performances.build({:promotion_start => '2011-07-23T21:00:00+00:00', :promotion_end => '2011-07-24T01:00:00+00:00'})
gc_perf.save!

# ***Features***

# Jam 1
js1.features.build({:location => bc1, :performance => lsmj1, :priority => 1}).save!
js1.features.build({:location => bc1, :performance => la1,  :priority => 2}).save!
js1.features.build({:location => bc1, :performance => ggg1, :priority => 3}).save!

# Jam 2
js2.features.build({:location => bc1, :performance => gg1, :priority => 3}).save!
js2.features.build({:location => bc1, :performance => bs1, :priority => 1}).save!
js2.features.build({:location => bc1, :performance => sd1, :priority => 2}).save!

# Jam 3
js3.features.build({:location => bc1, :performance => la2,   :priority => 1}).save!
js3.features.build({:location => bc1, :performance => ek1,   :priority => 2}).save!
js3.features.build({:location => bc1, :performance => t10_1, :priority => 3}).save!

# Jam 4
js4.features.build({:location => bc1, :performance => _3am1, :priority => 1}).save!
js4.features.build({:location => bc1, :performance => ls1,   :priority => 2}).save!
js4.features.build({:location => bc1, :performance => la3,   :priority => 3}).save!

# Jam 5
js5.features.build({:location => bc1, :performance => kn1,  :priority => 1}).save!
js5.features.build({:location => bc1, :performance => ggg2, :priority => 2}).save!
js5.features.build({:location => bc1, :performance => la4,  :priority => 3}).save!
js5.save!

# Taco Toss 1
tt1.features.build({:location => lh1, :performance => djjj1}).save!

# Taco Toss 2
tt2.features.build({:location => lh1, :performance => djjj2}).save!

# Taco Toss 3
tt3.features.build({:location => lh1, :performance => djjj3}).save!

# Taco Toss 4
tt4.features.build({:location => lh1, :performance => djjj4}).save!

# Taco Toss 5
tt5.features.build({:location => lh1, :performance => djjj5}).save!

# Rusty Rudder Saturday Night Concert 1
scrr1.features.build({:location => rr1, :performance => kn2}).save!

# Rusty Rudder Saturday Night Concert 2
scrr2.features.build({:location => rr1, :performance => kn3}).save!

# Rusty Rudder Saturday Night Concert 3
scrr3.features.build({:location => rr1, :performance => gg2}).save!

# Rusty Rudder Saturday Night Concert 4
scrr4.features.build({:location => rr1, :performance => sd1}).save!

# Rusty Rudder Saturday Night Concert 5
scrr5.features.build({:location => rr1, :performance => cr1}).save!

# The Bangles
tb1.features.build({:location => bc1, :performance => tb_perf}).save!
tb1.features.build({:location => bc1, :performance => as1}).save!

# George Clinton
gc1.features.build({:location => bc1, :performance => gc_perf}).save!

#
# tr1 = Event.create({:name => 'Thursday Night At The Rudder', :description => 'Thursday night show featuring Love Seed Momma Jump', :website => 'http://www.deweybeachlife.com/', :venue => rr, :promotion => ls, :special_event_id => nil, :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})
#
# rb1 = Event.create({:name => 'Running Of The Bull', :description => 'Getting Drunk and chasing 2 guys in a bull costume', :website => 'http://www.thestarboard.com/', :venue => sb, :promotion => nil, :special_event_id => nil, :stage => '', :event_start => '2011-10-01T19:00:00+00:00', :event_end => '2011-10-01T21:00:00+00:00', :logo => 'logo'})









