# encoding: utf-8
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
facebook = Weblocation.create!({:name => "Facebook"})
itunes   = Weblocation.create!({:name => "iTunes"})
myspace  = Weblocation.create!({:name => "MySpace"})
twit     = Weblocation.create!({:name => "Twitter"})
www      = Weblocation.create!({:name => "Web"})
youtube  = Weblocation.create!({:name => "YouTube"})

# ***Venues***

# Bottle and Cork
bc = Venue.create!({:name => 'Bottle & Cork', :description => 'The Bottle & Cork is a live music club established in 1936.', :address1 => '1807 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-7272'})
bc1 = bc.locations.build()
bca = bc.locations.build({:name => "Stage A"})
bcb = bc.locations.build({:name => "Stage B"})
bc.links.build( {:weblocation => www, :url => "http://www.deweybeachlife.com/ent_bc.html"})
bc.save!

# Lighthouse
lh = Venue.create({:name => 'The Lighthouse', :description => 'Tall tower, bright light', :address1 => '2112 Shiny Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-555-1212'})
lh1 = lh.locations.build()
lh.links.build( {:weblocation => www, :url => "http://www.ruddertowneusa.com/The-Lighthouse.html"})
lh.save!

# Starboard
sb = Venue.create({:name => 'The Starboard', :description => 'John thinks it is too crowded.', :address1 => '2009 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-4600'})
sb1 = sb.locations.build()
sba = sb.locations.build({:name => "Main Stage"})
sbb = sb.locations.build({:name => "Deck Stage"})
sb.links.build( {:weblocation => www, :url => "http://www.thestarboard.com/"})
sb.save!

# ***Acts***

# Bands
gg = Act.create({:name => 'Mr. Greengenes', :description => 'Coverband from Philadelphia'})
gg.links.build({:weblocation => www, :url => 'http://www.mrgreengenes.com/'})
gg.links.build({:weblocation => facebook, :url => 'http://www.facebook.com/pages/Mr-Greengenes/119075867831'})
gg.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/mrgg'})
gg.save!

kn = Act.create({:name => 'Kristen And The Noise', :description => 'Coverband from Philadelphia'})
kn.links.build({:weblocation => www, :url => "http://www.kristenandthenoise.com/"})
kn.save!

kj = Act.create({:name => 'Kristen & Joe', :description => 'Accoustic music from Kristen & Joe'})
kj.links.build({:weblocation => www, :url => 'http://www.kristenandthenoise.com/'})
kn.save!

la = Act.create({:name => 'Liquid A', :description => 'Coverband from Philadelphia'})
la.links.build({:weblocation => www, :url => 'http://www.liquida.net/'})
la.save!

bs = Act.create({:name => 'Burnt Sienna', :description => 'Coverband from Philadelphia'})
bs.links.build({:weblocation => www, :url => 'http://www.burntsiennaband.com/'})
bs.save!

lsmj = Act.create({:name => 'Love Seed Mama Jump'})
lsmj.links.build({:weblocation => www, :url => 'http://www.loveseed.com/'})
lsmj.save!

ggg = Act.create({:name => 'Go Go Gadjet', :description => 'Coverband from Philadelphia'})
ggg.links.build({:weblocation => www, :url => 'http://www.gogogadjet.com/'})
ggg.save!

tf = Act.create({:name => 'Laura Lea and Trip Fabulous', :description => 'Coverband'})
tf.links.build({:weblocation => www, :url => 'http://www.trippfabulous.com/'})
tf.save!

sd = Act.create({:name => 'Split Decision', :description => 'Coverband'})
sd.links.build({:weblocation => www, :url => 'http://www.splitdecision.com/'})
sd.links.build({:weblocation => facebook, :url => 'http://www.facebook.com/splitdecisionphilly'})
sd.links.build({:weblocation => twit, :url => 'http://twitter.com/#!/Splitdphilly'})
sd.save!

ek = Act.create({:name => 'Element K', :description => 'Coverband'})
ek.links.build({:weblocation => www, :url => 'http://elementkband.com/'})
ek.save!

t10 = Act.create({:name => 'Table Ten', :description => 'Coverband'})
t10.links.build({:weblocation => www, :url => 'http://www.friendsoftableten.com/'})
t10.save!

ls = Act.create({:name => 'Lifespeed', :description => 'Coverband from New Jersey'})
ls.links.build({:weblocation => www, :url => 'http://www.lifespeed.tv/'})
ls.save!

_3am = Act.create({:name => '3 am', :formerly => 'Full Effect', :description => 'Coverband'})
_3am.links.build({:weblocation => www, :url => 'http://www.idontknow.com/'})
_3am.save!

cr = Act.create({:name => 'Chorduroy', :description => 'Coverband'})
cr.links.build({:weblocation => www, :url => 'http://www.chorduroyband.com/'})
cr.save!

tb = Act.create({:name => 'The Bangles', :description => 'It was 30 years ago that guitarists Susanna Hoffs and Vicki Peterson and drummer Debbi Peterson formed the Bangles in a Brentwood, California, garage.'})
tb.links.build({:weblocation => www, :url => 'http://www.thebangles.com/'})
tb.save!

as = Act.create({:name => 'April Smith And The Great Picture Show', :description => 'This Brooklyn musician turns out sultry updates ragtime and swing, pouring her rich voice over tight guitar strumming.'})
as.links.build({:weblocation => www, :url => 'http://www.aprilsmithmusic.com/'})
as.save!

gc = Act.create({:name => 'George Clinton & Parliament Funkadelic', :description => 'Godfather of Funk.'})
gc.links.build({:weblocation => www, :url => 'http://www.georgeclinton.com/'})
gc.save!

lauraMarie = Act.create({:name => 'Laura Marie', :hometown => 'San Antonio, TX'})
lauraMarie.links.build({:weblocation => www, :url => 'http://lauramariemusic.com'})
lauraMarie.links.build({:weblocation => twit, :url => 'http://www.twitter.com/lauramariemusic'})
lauraMarie.links.build({:weblocation => itunes, :url => 'http://lauramariemusic.visibli.com/47bef819655118d3/?web=ebbd64&dst=http%3A//itunes.apple.com/us/artist/laura-marie/id266036410'})
lauraMarie.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/lalaontube'})
lauraMarie.save!

liat = Act.create({:name => 'Liat', :hometown => 'Voorhees, NJ'})
liat.links.build({:weblocation => www, :url => 'http://www.reverbnation.com/liatsmusic'})
liat.save!

lizBethRose = Act.create({:name => 'LizBeth Rose', :hometown => 'Philadelphia, PA'})
lizBethRose.links.build({:weblocation => www, :url => 'http://www.myspace.com/lizbethrosemusic'})
lizBethRose.save!

loriCitro = Act.create({:name => 'Lori Citro', :hometown => 'Newark, DE'})
loriCitro.links.build({:weblocation => www, :url => 'http://www.reverbnation.com/loricitro'})
loriCitro.save!

loveViaDanceMachine = Act.create({:name => 'Love Via Dance Machine', :hometown => 'Boston, MA'})
loveViaDanceMachine.links.build({:weblocation => www, :url => 'http://www.myspace.com/loveviadancemachine'})
loveViaDanceMachine.save!

lovebettie_description = <<EOD
Named *“Pittsburgh’s Hottest Band”*[1], the Pittsburgh based pioneers of ["Swagger Rock":http://www.urbandictionary.com/define.php?term=Swagger%20Rock] attract fans from all walks of life with their neo-soul, rock-pop mash up. This genre-bending refreshing new take on modern rock has landed the band an onslaught of mass media exposure, major radio circulation, and a resounding buzz within the music industry.

Having toured a majority of East coast and Midwest states, Lovebettie’s persistent drive and tireless work ethic has helped them evolve from a local favorite to a national success story. They have shared the stage with multitudes of national acts including: Lifehouse, Fuel, Semi Precious Weapons, Everclear, Guster, The Last Goodnight, and many more. In 2010 they performed The Official Lady Gaga Afterparty for her Monsters Ball Tour. They were personally selected by Jon Bon Jovi as one of three bands to contend for a tour opening spot, and released two music videos for airing consideration on MTV, VH1, and Fuse.

Recently, in 2011, Lovebettie released their new EP, engineered, produced, and mixed by notorious producer Jim Wirt (Incubus, Fiona Apple, Hoobastank) and already finished a 24 day headlining US tour from Boston to Austin. They performed 7 showcases during this year’s esteemed annual South by Southwest festival, and are gearing up for another full US tour for the Spring of 2012.'

fn1. "Microsoft Windows"
EOD

lovebettie = Act.create({:name => 'Lovebettie', :description => lovebettie_description, :hometown => 'Pittsburgh, PA'})
lovebettie.links.build({:weblocation => www, :url => 'http://www.lovebettie.com/'})
lovebettie.links.build({:weblocation => twit, :url => 'http://www.twitter.com/lovebettie'})
lovebettie.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/lovebettie'})
lovebettie.links.build({:weblocation => facebook, :url => 'http://www.facebook.com/lovebettie'})
lovebettie.links.build({:weblocation => itunes, :url => 'http://www.itunes.com/lovebettie'})
lovebettie.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/lovebettie'})
lovebettie.save!

lowercaseblues = Act.create({:name => 'lower case blues', :hometown => 'Rehoboth Beach, DE'})
lowercaseblues.links.build({:weblocation => www, :url => 'http://www.lowercaseblues.net/'})
lowercaseblues.save!

luciar = Act.create({:name => 'Luciar', :hometown => 'Brooklyn, NY'})
luciar.links.build({:weblocation => www, :url => 'http://www.luciar.com/'})
luciar.save!

luckyDub = Act.create({:name => 'Lucky Dub', :hometown => 'Washington, DC'})
luckyDub.links.build({:weblocation => www, :url => 'http://luckydub.com/'})
luckyDub.save!

zakSmithBand = Act.create({:name => 'Zak Smith Band', :hometown => 'New York, NY'})
zakSmithBand.links.build({:weblocation => www, :url => 'http://www.zaksmithband.com/'})
zakSmithBand.save!


# DJs
djs = Act.create({:name => 'SmokyTheWhore', :description => 'Smoky is the best DJ in Dewey Beach every summer, with that silky smooth voice and camera that takes amazing candid photos. Outside of Dewey, he will work any gig...weddings, memorials, Klan rallies disguised as weddings, etc! He will even wear a Redskins jersey to a gig even though he is a DIEHARD Steelers fan...his excuse "Dan Snyder writes the check, I wear his jersey!" He will play any type of music for the right price...Celine Dion may cost you a little more, but he will play it! ABBA? You betcha!!!! His "Man Card" has been pulled on multiple occassions, his "Black Card" was pulled when he played "Sweet Home Alabama"

We love SmokyTheWhore!'})
djs.links.build({:weblocation => www, :url => 'http://smokythedj.com/'})
djs.save!

djjj = Act.create({:name => 'DJ Jazzy Jeff', :description => 'Fresh Prince\'s Sidekick'})
djjj.save!



# ***Events***

# Jam Session
js = Event.create({:name => 'Jam Session', :description => 'Saturday Jam with three bands.'})
js.links.build({:weblocation => www, :url => 'http://www.deweybeachlife.com/'})
js.occurrences.build({})
# js.save!

# DJ Smoky
# djse = Event.create({:name => 'The Starboard Saturday Night', :description => 'Smoky spins some shit on his iPod.'})
# djse.links.build({:weblocation => www, :url => 'http://www.thestarboard.com/' })
# djse.save!

# Taco Toss
# tt = Event.create({:name => 'Taco Toss', :description => 'Slinging mexican food.'})
# tt.links.build({:weblocation => www, :url => 'http://www.deweybeachlife.com/'})
# tt.save!




# ***Parents***

# Jam 1
# js1 = js.schedules.build({:location => bc1, :start => '2011-07-02T17:00:00+00:00', :end => '2011-07-03T01:00:00+00:00'})
# js1.save!
 
# Jam 2
# js2 = js.schedules.build({:location => bc1, :start => '2011-07-09T17:00:00+00:00', :end => '2011-07-10T01:00:00+00:00'})
# js2.save!

# Jam 3
# js3 = js.schedules.build({:location => bc1, :start => '2011-07-16T17:00:00+00:00', :end => '2011-07-17T01:00:00+00:00'})
# js3.save!

# Jam 4
# js4 = js.schedules.build({:location => bc1, :start => '2011-07-23T17:00:00+00:00', :end => '2011-07-24T01:00:00+00:00'})
# js4.save!

# Jam 5
# js5 = js.schedules.build({:location => bc1, :start => '2011-07-30T17:00:00+00:00', :end => '2011-07-31T01:00:00+00:00'})
# js5.save!

# taco toss 1
# tt1 = tt.schedules.build({:location => lh1, :start => '2011-07-01T17:00:00+00:00', :end => '2011-07-01T21:00:00+00:00'})
# tt1.save!

# DJ Smoky 1
# djs.schedules.build({:location => sb1, :start => '2011-07-01T21:00:00+00:00', :end => '2011-07-02T01:00:00+00:00'}).save!

# DJ Smoky 2
# djs.schedules.build({:location => sb1, :start => '2011-07-08T21:00:00+00:00', :end => '2011-07-09T01:00:00+00:00'}).save!


# Love Seed Moma Jump Concert
# lsmj1 = lsmj.schedules.build({:location => bc1, :start => '2011-07-02T21:00:00+00:00'}).save!

# Mr. Greengenes Concert
# gg1 = gg.schedules.build({:location => bc1, :start => '2011-07-09T21:00:00+00:00'}).save!


# ***Children***

# Jam 1
# lsmj.schedules.build({:location => bc1, :start => '2011-07-02T17:00:00+00:00', :parent => js1 }).save!
# la.schedules.build({:location => bc1, :start => '2011-07-02T18:20:00+00:00', :parent => js1 }).save!
# ggg.schedules.build({:location => bc1, :start => '2011-07-02T19:40:00+00:00', :parent => js1 }).save!
 
# Love Seed Moma Jump Concert
# la.schedules.build({:location => bc1, :start => '2011-07-02T22:20:00+00:00', :parent => lsmj1 }).save!
# lsmj.schedules.build({:location => bc1, :start => '2011-07-02T23:40:00+00:00', :parent => lsmj1 }).save!

# Jam 2
# gg.schedules.build({:location => bc1, :start => '2011-07-09T17:00:00+00:00', :parent => js2 }).save!
# bs.schedules.build({:location => bc1, :start => '2011-07-09T18:20:00+00:00', :parent => js2 }).save!
# sd.schedules.build({:location => bc1, :start => '2011-07-09T19:40:00+00:00', :parent => js2 }).save!

# Mr. Greengenes Concert
# bs.schedules.build({:location => bc1, :start => '2011-07-09T22:20:00+00:00', :parent => gg1 }).save!
# gg.schedules.build({:location => bc1, :start => '2011-07-09T23:40:00+00:00', :parent => gg1 }).save!

