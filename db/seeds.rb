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

# *** Actual Seeds ***
fb      = Weblocation.create!({:name => "Facebook", :tagline => "join us on",     :icon => "facebook-logo.png"})
itunes  = Weblocation.create!({:name => "iTunes",   :tagline => "look for us on", :icon => "itunes-logo.png"})
ms      = Weblocation.create!({:name => "MySpace",  :tagline => "join us on",     :icon => "myspace-logo.png"})
twit    = Weblocation.create!({:name => "Twitter",  :tagline => "follow us on",   :icon => "twitter-logo.png"})
www     = Weblocation.create!({:name => "Web",      :tagline => "join us on the", :icon => "web-logo.png"})
youtube = Weblocation.create!({:name => "YouTube",  :tagline => "watch us on",    :icon => "youtube-logo.png"})

# ***Venues***

# Bottle and Cork
bc = Venue.create!({:name => 'Bottle & Cork', :description => 'The Bottle & Cork is a live music club established in 1936.', :website => 'http://www.deweybeachlife.com/', :address1 => '1807 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-7272', :logo => 'cork-logo.png'})
bc1 = bc.locations.build()
bca = bc.locations.build({:name => "Stage A"})
bcb = bc.locations.build({:name => "Stage B"})
bc.save!

# Northbeach
nb = Venue.create({:name => 'Northbeach', :description => 'Northbeach offers casual indoor and outdoor dining overlooking Rehoboth Bay. Northbeach is open mid-May through Labor Day. Join us for great food, frozen drinks and beautiful sunsets.', :website => 'http://www.deweybeachlife.com/', :address1 => '125 McKinley Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-226-8673', :logo => 'northbeach-logo.png'})
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
sb = Venue.create({:name => 'The Starboard', :description => 'John thinks it is too crowded.', :website => 'http://www.thestarboard.com/', :address1 => '2009 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-4600', :logo => 'starboard-logo.png'})
sb1 = sb.locations.build()
sba = sb.locations.build({:name => "Main Stage"})
sbb = sb.locations.build({:name => "Deck Stage"})
sb.save!

# Jimmy's Grille
jg = Venue.create({:name => "Jimmy's Grille", :description => 'Outdoor Bar and Grille.', :website => 'http://www.deweybeachlife.com/', :address1 => 'Highway One and Bellevue Street', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-4600', :logo => 'jimmys-logo.png'})
jg1 = jg.locations.build()
jg.save!

#McShea's
ms = Venue.create({:name => "McShea's", :description => 'Irish Pub.', :website => 'http://www.deweybeach.com/mcsheas/', :address1 => '1705 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-9430', :logo => 'mcsheas-logo.png'})
ms1 = ms.locations.build()
ms.save!

#Woody's East Coast Grille
wg = Venue.create({:name => "Woody's East Coast Grille", :description => 'Surf Bar and Grille.', :website => 'http://www.deweybeachbar.com/', :address1 => '1904 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '', :logo => 'woodys-logo.png'})
wg1 = wg.locations.build()
wg.save!

#Gary's Dewey Beach Grille
gdbg = Venue.create({:name => "Gary's Dewey Beach Grill", :description => 'Bar and Grille', :website => 'http://www.garysdeweybeachgrill.com/', :address1 => '2000 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-8519', :logo => 'garys-logo.png'})
gdbg1 = gdbg.locations.build()
gdbg.save!



# ***Acts***

# Bands
gg = Act.create({:logo => 'greengenes-logo.png', :name => 'Mr. Greengenes', :description => 'Coverband from Philadelphia', :website => 'http://www.mrgreengenes.com/'})
gg.save!

kn = Act.create({:logo => 'kristennoise-logo.png', :name => 'Kristen And The Noise', :description => 'Coverband from Philadelphia', :website => 'http://www.kristenandthenoise.com/'})
kn.save!

kj = Act.create({:logo => 'kristenjoe-logo.png', :name => 'Kristen & Joe', :description => 'Accoustic music from Kristen & Joe', :website => 'http://www.kristenandthenoise.com/'})
kn.save!

la = Act.create({:logo => 'liquida-logo.png', :name => 'Liquid A', :description => 'Coverband from Philadelphia', :website => 'http://www.liquida.net/'})
la.save!

bs = Act.create({:logo => 'burntsienna-logo.png', :name => 'Burnt Sienna', :description => 'Coverband from Philadelphia', :website => 'http://www.burntsiennaband.com/'})
bs.save!

lsmj = Act.create({:logo => 'loveseed-logo.png', :name => 'Love Seed Momma Jump', :logo => 'loveseed-logo.png', :description => 'Coverband from Dewey Beach, DE', :website => 'http://www.loveseed.com/'})
lsmj.save!

ggg = Act.create({:logo => 'gogogadjet-logo.png', :name => 'Go Go Gadjet', :description => 'Coverband from Philadelphia', :website => 'http://www.gogogadjet.com/'})
ggg.save!

tf = Act.create({:logo => 'lauralea-logo.png', :name => 'Laura Lea and Trip Fabulous', :description => 'Coverband', :website => 'http://www.trippfabulous.com/'})
tf.save!

sd = Act.create({:logo => 'splitdecision-logo.png', :name => 'Split Decision', :description => 'Coverband', :website => 'http://www.splitdecision.com/'})
sd.save!

ek = Act.create({:logo => 'elementk-logo.png', :name => 'Element K', :description => 'Coverband', :website => 'http://elementkband.com/'})
ek.save!

t10 = Act.create({:logo => 'tableten-logo.png', :name => 'Table Ten', :description => 'Coverband', :website => 'http://www.friendsoftableten.com/'})
t10.save!

ls = Act.create({:logo => 'lifespeed-logo.png', :name => 'Lifespeed', :description => 'Coverband from New Jersey', :website => 'http://www.lifespeed.tv/'})
ls.save!

_3am = Act.create({:logo => '3am-logo.png', :name => '3 am', :formerly => 'Full Effect', :description => 'Coverband', :website => 'http://www.idontknow.com/'})
_3am.save!

cr = Act.create({:logo => 'chorduroy-logo.png', :name => 'Chorduroy', :description => 'Coverband', :website => 'http://www.chorduroyband.com/'})
cr.save!

tb = Act.create({:logo => 'bangles-logo.png', :name => 'The Bangles', :description => 'It was 30 years ago that guitarists Susanna Hoffs and Vicki Peterson and drummer Debbi Peterson formed the Bangles in a Brentwood, California, garage.', :website => 'http://www.thebangles.com/'})
tb.save!

as = Act.create({:logo => 'aprilsmith-logo.png', :name => 'April Smith And The Great Picture Show', :description => 'This Brooklyn musician turns out sultry updates ragtime and swing, pouring her rich voice over tight guitar strumming.', :website => 'http://www.aprilsmithmusic.com/'})
as.save!

gc = Act.create({:logo => 'georgeclinton-logo.png', :name => 'George Clinton & Parliament Funkadelic', :description => 'Godfather of Funk.', :website => 'http://www.georgeclinton.com/'})
gc.save!

LauraMarie = Act.create({:logo => 'LauraMarie-logo.png', :name => 'Laura Marie', :hometown => 'San Antonio, TX', :website => 'http://lauramariemusic.com'})
LauraMarie.save!

Liat = Act.create({:logo => 'Liat-logo.png', :name => 'Liat', :hometown => 'Voorhees, NJ', :website => 'http://www.reverbnation.com/liatsmusic'})
Liat.save!

LizBethRose = Act.create({:logo => 'LizBethRose-logo.png', :name => 'LizBeth Rose', :hometown => 'Philadelphia, PA', :website => 'http://www.myspace.com/lizbethrosemusic'})
LizBethRose.save!

LoriCitro = Act.create({:logo => 'LoriCitro-logo.png', :name => 'Lori Citro', :hometown => 'Newark, DE', :website => 'http://www.reverbnation.com/loricitro'})
LoriCitro.save!

LoveViaDanceMachine = Act.create({:logo => 'LoveViaDanceMachine-logo.png', :name => 'Love Via Dance Machine', :hometown => 'Boston, MA', :website => 'http://www.myspace.com/loveviadancemachine'})
LoveViaDanceMachine.save!

lovebettie_description = <<EOD
<p>Named “Pittsburgh’s Hottest Band” by Microsoft Windows, the Pittsburgh based pioneers of “Swagger Rock” attract fans from all walks 
of life with their neo-soul, rock-pop mash up. This genre-bending refreshing new take on modern rock has landed the band an onslaught 
of mass media exposure, major radio circulation, and a resounding buzz within the music industry.</p>

<p>Having toured a majority of East coast and Midwest states, Lovebettie’s persistent drive and tireless work ethic has helped them evolve 
from a local favorite to a national success story. They have shared the stage with multitudes of national acts including: Lifehouse, Fuel, 
Semi Precious Weapons, Everclear, Guster, The Last Goodnight, and many more. In 2010 they performed The Official Lady Gaga Afterparty for 
her Monsters Ball Tour. They were personally selected by Jon Bon Jovi as one of three bands to contend for a tour opening spot, and released 
two music videos for airing consideration on MTV, VH1, and Fuse.</p>

<p>Recently, in 2011, Lovebettie released their new EP, engineered, produced, and mixed by notorious producer Jim Wirt (Incubus, Fiona Apple, Hoobastank) 
and already finished a 24 day headlining US tour from Boston to Austin. They performed 7 showcases during this year’s esteemed annual South by Southwest 
festival, and are gearing up for another full US tour for the Spring of 2012.'</p>
EOD

Lovebettie = Act.create({:logo => 'Lovebettie-logo.png', :name => 'Lovebettie', :description => lovebettie_description, :hometown => 'Pittsburgh, PA', :website => 'http://www.lovebettie.com/'})
Lovebettie.save!

lowercaseblues = Act.create({:logo => 'lowercaseblues-logo.png', :name => 'lower case blues', :hometown => 'Rehoboth Beach, DE', :website => 'http://www.lowercaseblues.net/'})
lowercaseblues.save!

Luciar = Act.create({:logo => 'Luciar-logo.png', :name => 'Luciar', :hometown => 'Brooklyn, NY', :website => 'http://www.luciar.com/'})
Luciar.save!

LuckyDub = Act.create({:logo => 'LuckyDub-logo.png', :name => 'Lucky Dub', :hometown => 'Washington, DC', :website => 'http://luckydub.com/'})
LuckyDub.save!

ZakSmithBand = Act.create({:logo => 'ZakSmithBand-logo.png', :name => 'Zak Smith Band', :hometown => 'New York, NY', :website => 'http://www.zaksmithband.com/'})
ZakSmithBand.save!


# DJs
djs = Act.create({:logo => 'djsmoky-logo.png', :name => 'DJ Smoky', :description => 'DJ', :website => 'http://smokythedj.com/'})
djs.save!

djjj = Act.create({:logo => 'djjazzyjeff-logo.png', :name => 'DJ Jazzy Jeff', :description => 'Fresh Prince\'s Sidekick', :website => 'http://www.apple.com/'})
djjj.save!



# ***Events***

# Jam Session
js = Event.create({:logo => 'jam-logo.png', :name => 'Jam Session', :description => 'Saturday Jam with three bands.', :website => 'http://www.deweybeachlife.com/'})
js.save!

# Taco Toss
tt = Event.create({:logo => 'tacotoss-logo.png', :name => 'Taco Toss', :description => 'Friday happy hour featuring Orange Crushes and $1 tacos and hot dogs.', :website => 'http://www.ruddertowneusa.com/The-Lighthouse.html' })
tt.save!

# Rudder's Saturday Night Concert
scrr = Event.create({:logo => 'rudder-logo.png', :name => "Rudder's Saturday Night Concert", :description => 'Saturday Night Concert at the Rudder.', :website => 'http://www.deweybeachlife.com'})
scrr.save!

# The Bangles
tb_concert = Event.create({:logo => 'bangles-logo.png', :name => 'The Bangles', :description => 'a night with the bangles', :website => 'http://www.deweybeachfest.com/dbcf_cork.html'})
tb_concert.save!

# George Clinton
gc_concert = Event.create({:logo => 'georgeclinton-logo.png', :name => 'George Clinton & Parliament Funkadelic', :description => 'Up for the down stroke', :website => 'http://www.deweybeachfest.com/dbcf_cork.html'})
gc_concert.save!

#Dewey Beach Music Conference
dbmc = Event.create({:is_special => true, :logo => 'dbmc-logo.png', :name => 'Dewey Beach Music Conference', :description => 'DBMC may not be the biggest music conference in the northeast, but it has garnered more than its fair share of critical acclaim, rave reviews and enthusiastic return participants. This is due in no small part to the consistent quality of talent and its location.', :website => 'http://www.deweybeachfest.com/dbmc/'})
dbmc.save!

# DJ Smoky
djse = Event.create({:logo => 'djsmoky-logo.png', :name => 'DJ Smoky', :description => 'Smoky spins some shit on his iPod.', :website => 'http://www.thestarboard.com/' })
djse.save!


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
tb1 = tb_concert.occurrences.build({:cover_charge => '15.99', :event_start => '2011-07-05T20:00:00+00:00', :event_end => '2011-07-06T01:00:00+00:00'})
tb1.save!

# George Clinton
gc1 = gc_concert.occurrences.build({:cover_charge => '25.00', :event_start => '2011-07-23T20:00:00+00:00', :event_end => '2011-07-24T01:00:00+00:00'})
gc1.save!

#Dewey Beach Music Conference 2011 Occurrence
dbmc2011 = dbmc.occurrences.build({:event_start => '2011-09-22T21:40:00+00:00', :event_end => '2011-09-25T01:00:00+00:00'})
dbmc2011.save!

# DJ Smoky 1
djse1 = djse.occurrences.build({:event_start => '2011-07-01T21:00:00+00:00', :event_end => '2011-07-02T01:00:00+00:00'})
djse1.save!

# DJ Smoky 2
djse2 = djse.occurrences.build({:event_start => '2011-07-08T21:00:00+00:00', :event_end => '2011-07-09T01:00:00+00:00'})
djse2.save!

# DJ Smoky 3
djse3 = djse.occurrences.build({:event_start => '2011-07-15T21:00:00+00:00', :event_end => '2011-07-16T01:00:00+00:00'})
djse3.save!

# DJ Smoky 4
djse4 = djse.occurrences.build({:event_start => '2011-07-22T21:00:00+00:00', :event_end => '2011-07-23T01:00:00+00:00'})
djse4.save!

# DJ Smoky 5
djse5 = djse.occurrences.build({:event_start => '2011-07-29T21:00:00+00:00', :event_end => '2011-07-30T01:00:00+00:00'})
djse5.save!



# ***Performances***

# Jam 1
js1.performances.build({:location => bc1, :act => lsmj, :priority => 1, :performance_start => '2011-07-02T17:00:00+00:00', :performance_end => '2011-07-03T01:00:00+00:00'}).save!
js1.performances.build({:location => bc1, :act => la,   :priority => 2, :performance_start => '2011-07-02T17:00:00+00:00', :performance_end => '2011-07-03T01:00:00+00:00'}).save!
js1.performances.build({:location => bc1, :act => ggg,  :priority => 3, :performance_start => '2011-07-02T17:00:00+00:00', :performance_end => '2011-07-03T01:00:00+00:00'}).save!

# Jam 2
js2.performances.build({:location => bc1, :act => gg, :priority => 1, :performance_start => '2011-07-09T17:00:00+00:00', :performance_end => '2011-07-10T01:00:00+00:00'}).save!
js2.performances.build({:location => bc1, :act => bs, :priority => 2, :performance_start => '2011-07-09T17:00:00+00:00', :performance_end => '2011-07-10T01:00:00+00:00'}).save!
js2.performances.build({:location => bc1, :act => sd, :priority => 3, :performance_start => '2011-07-09T17:00:00+00:00', :performance_end => '2011-07-10T01:00:00+00:00'}).save!

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
tb1.performances.build({:location => bc1, :act => as, :priority => 1, :performance_start => '2011-07-05T21:00:00+00:00', :performance_end => '2011-07-05T21:40:00+00:00' }).save!

# George Clinton
gc1.performances.build({:location => bc1, :act => gc, :priority => 0, :performance_start => '2011-07-23T21:00:00+00:00', :performance_end => '2011-07-24T01:00:00+00:00' }).save!

# Dewey Beach Music Conference
dbmc2011.performances.build({:location => ms1, :act => LauraMarie, :performance_start => '2011-09-23T21:30:00+00:00', :performance_end => '2011-09-23T22:00:00+00:00'}).save!
dbmc2011.performances.build({:location => wg1, :act => Liat, :performance_start => '2011-09-24T21:00:00+00:00', :performance_end => '2011-09-24T22:00:00+00:00'}).save!
dbmc2011.performances.build({:location => jg1, :act => LizBethRose, :performance_start => '2011-09-24T20:00:00+00:00', :performance_end => '2011-09-24T11:00:00+00:00'}).save!
dbmc2011.performances.build({:location => gdbg1, :act => LoriCitro, :performance_start => '2011-09-24T22:00:00+00:00', :performance_end => '2011-09-24T22:30:00+00:00'}).save!
dbmc2011.performances.build({:location => rrc, :act => LoveViaDanceMachine, :performance_start => '2011-09-23T21:00:00+00:00', :performance_end => '2011-09-23T21:40:00+00:00'}).save!
dbmc2011.performances.build({:location => rrb, :act => Lovebettie, :performance_start => '2011-09-24T22:20:00+00:00', :performance_end => '2011-09-24T23:00:00+00:00'}).save!
dbmc2011.performances.build({:location => rrd, :act => lowercaseblues, :performance_start => '2011-09-23T00:20:00+00:00', :performance_end => '2011-09-23T01:00:00+00:00'}).save!
dbmc2011.performances.build({:location => ms1, :act => Luciar, :performance_start => '2011-09-23T21:00:00+00:00', :performance_end => '2011-09-23T21:30:00+00:00'}).save!
dbmc2011.performances.build({:location => bca, :act => LuckyDub, :performance_start => '2011-09-24T23:00:00+00:00', :performance_end => '2011-09-24T23:40:00+00:00'}).save!
dbmc2011.performances.build({:location => bcb, :act => ZakSmithBand, :performance_start => '2011-09-24T21:00:00+00:00', :performance_end => '2011-09-24T21:40:00+00:00'}).save!

# DJ Smoky 1
djse1.performances.build({:location => sb1, :act => djs, :performance_start => '2011-07-01T21:00:00+00:00', :performance_end => '2011-07-02T01:00:00+00:00', :priority => 0 }).save!

# DJ Smoky 2
djse2.performances.build({:location => sb1, :act => djs, :performance_start => '2011-07-08T21:00:00+00:00', :performance_end => '2011-07-09T01:00:00+00:00', :priority => 0 }).save!

# DJ Smoky 3
djse3.performances.build({:location => sb1, :act => djs, :performance_start => '2011-07-15T21:00:00+00:00', :performance_end => '2011-07-16T01:00:00+00:00', :priority => 0 }).save!

# DJ Smoky 4
djse4.performances.build({:location => sb1, :act => djs, :performance_start => '2011-07-22T21:00:00+00:00', :performance_end => '2011-07-23T01:00:00+00:00', :priority => 0 }).save!

# DJ Smoky 5
djse5.performances.build({:location => sb1, :act => djs, :performance_start => '2011-07-29T21:00:00+00:00', :performance_end => '2011-07-30T01:00:00+00:00', :priority => 0 }).save!









