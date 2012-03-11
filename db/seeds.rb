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

# Northbeach
nb = Venue.create({:name => 'Northbeach', :description => 'Northbeach offers casual indoor and outdoor dining overlooking Rehoboth Bay. Northbeach is open mid-May through Labor Day. Join us for great food, frozen drinks and beautiful sunsets.', :address1 => '125 McKinley Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-226-8673'})
nb1 = nb.locations.build()
nb.links.build( {:weblocation => www, :url => "http://www.deweybeachlife.com/dning_nb.html"})
nb.save!

# Lighthouse
lh = Venue.create({:name => 'The Lighthouse', :description => 'Tall tower, bright light', :address1 => '2112 Shiny Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-555-1212'})
lh1 = lh.locations.build()
lh.links.build( {:weblocation => www, :url => "http://www.ruddertowneusa.com/The-Lighthouse.html"})
lh.save!

# Rusty Rudder
rr = Venue.create({:name => 'Rusty Rudder', :description => 'The Rudder is now open daily.  Join us for our famous all u can eat Land and Sea Buffet served Friday and Saturdays at 4:30. We have live entertainment weekly.', :address1 => '113 Dickinson Street & The Bay', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-3888' })
rr1 = rr.locations.build()
rra = rr.locations.build({:name => "Stage A"})
rrb = rr.locations.build({:name => "Stage B"})
rrc = rr.locations.build({:name => "Stage C"})
rrd = rr.locations.build({:name => "Stage D"})
rr.links.build( {:weblocation => www, :url => "http://www.deweybeachlife.com/dning_rr.html"})
rr.save!

# Starboard
sb = Venue.create({:name => 'The Starboard', :description => "The Heart of Dewey Beach Delaware and home of the world's greatest bloody mary bar.", :address1 => '2009 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-4600'})
sb1 = sb.locations.build()
sba = sb.locations.build({:name => "Main Stage"})
sbb = sb.locations.build({:name => "Deck Stage"})
sb.links.build( {:weblocation => www, :url => "http://www.thestarboard.com/"})
sb.save!

jimmy_description = <<EOD
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ullamcorper odio vitae lacus volutpat condimentum. Suspendisse eleifend massa nec purus eleifend eu elementum sem hendrerit. Sed eget nisl purus, a rhoncus dui. Vestibulum accumsan tellus et lacus tincidunt non tempus odio accumsan. Vestibulum tortor risus, vestibulum in ultricies a, pharetra sit amet nunc. Suspendisse sollicitudin lobortis odio vel semper. In a sapien felis. Integer fringilla, lorem et bibendum ultrices, felis ligula suscipit orci, ac consectetur nisi libero quis purus. Maecenas porta rhoncus venenatis. Integer vel erat elit. Quisque vel tortor velit, ut rhoncus mi. Proin dictum commodo ullamcorper. Cras eu nisl metus. Nulla fringilla turpis erat, vitae hendrerit nisi.

Fusce quis metus tellus. Nunc quis nisi id arcu sollicitudin ultricies. Vestibulum commodo dui eu velit lobortis nec gravida tellus ullamcorper. Nullam at dolor ipsum. Fusce viverra lectus nec ipsum sodales congue. Mauris dignissim velit vitae nulla varius nec ornare urna egestas. Aenean ac egestas sapien. Sed metus metus, ultrices in consequat nec, aliquam eu urna. Quisque libero ipsum, rutrum nec tempor nec, tincidunt quis elit. Donec ultrices convallis nisi.

Donec porttitor lacus eu eros pharetra venenatis. Etiam pretium lectus et nunc fringilla eget auctor nisl ultrices. Cras malesuada urna at mauris porttitor at ultrices purus gravida. Cras ut dolor id massa egestas lobortis. Quisque nec justo id erat vestibulum tempus vel in orci. Nullam sed pharetra tortor. In hac habitasse platea dictumst. Nulla nisi velit, rutrum ac ultrices quis, egestas non neque. Curabitur sit amet dolor lectus. Maecenas fermentum purus id metus vehicula quis pharetra nulla sagittis. Donec tincidunt elit nec neque lacinia egestas. Integer rutrum nibh ac sem condimentum pulvinar dignissim erat suscipit. Sed porta sodales neque id imperdiet. Integer sagittis, tellus ac commodo eleifend, nibh massa euismod risus, et molestie massa justo nec enim. Sed rhoncus purus id magna pulvinar quis lacinia risus mollis.

Suspendisse ac lorem sed magna eleifend placerat quis non lorem. Maecenas at risus tortor. Ut ultrices dolor elit, placerat fringilla eros. Praesent tellus libero, malesuada a iaculis nec, dictum eget elit. Nullam vel mauris vitae nulla tincidunt consequat. Suspendisse tempor leo a dui commodo accumsan. Mauris tempus iaculis risus, vel molestie diam suscipit a. Etiam convallis erat et elit posuere blandit. Aenean at sapien justo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin eu arcu neque.

Nullam pellentesque accumsan tellus, a ornare nulla ultricies congue. Praesent porta metus id arcu bibendum accumsan. Quisque turpis lorem, blandit eget aliquet dapibus, tristique id felis. Mauris nec scelerisque orci. Duis ullamcorper tempor mi suscipit mattis. Mauris congue, risus vel pellentesque sollicitudin, libero velit cursus tellus, eget laoreet augue mauris pellentesque velit. Aliquam et ipsum at ante semper tincidunt non vel metus
EOD

# Jimmy's Grille
jg = Venue.create({:name => "Jimmy's Grille", :description => jimmy_description, :address1 => 'Highway One and Bellevue Street', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-4600'})
jg1 = jg.locations.build()
jg.links.build( {:weblocation => www, :url => "http://www.deweybeachlife.com/dning_jimmys_db.html"})
jg.save!

#McShea's
ms = Venue.create({:name => "McShea’s Beach Pub & Grill", :description => 'Irish Pub.', :address1 => '1705 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-9430'})
ms1 = ms.locations.build()
ms.links.build( {:weblocation => www, :url => "http://www.deweybeach.com/mcsheas/"})
ms.save!

#Woody's East Coast Grille
wg = Venue.create({:name => "Woody's East Coast Grille", :description => 'Surf Bar and Grille.', :address1 => '1904 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => ''})
wg1 = wg.locations.build()
wg.links.build( {:weblocation => www, :url => "http://www.deweybeachbar.com/"})
wg.save!

#Gary's Dewey Beach Grille
gdbg = Venue.create({:name => "Gary's Dewey Beach Grill", :description => 'Bar and Grille', :address1 => '2000 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-8519'})
gdbg1 = gdbg.locations.build()
gdbg.links.build({:weblocation => www, :url => 'http://www.garysdeweybeachgrill.com/' })
gdbg.save!



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

dsb_description = <<EOD
There is no question of Doug Segree's genuine enthusiasm and love for making music. A talented musician out of Annapolis, MD, he speaks to his audience through acoustic guitars and spirited vocals. People are drawn to the melodic nature of his music - great songs about life, sung with conviction and performed with true passion. 

He began his music career as a regular performer at local college bars in and around Gainesville, Florida while receiving his MBA at the University of Florida in 1994. The world of business took a backseat as he began fulfilling his love for performing and entertaining that has taken him to stages throughout the country. 

Doug has been a mainstay performer in the Mid-Atlantic region over the last fifteen years. He and his band have been playing the fifth quarter club level parties at every Washington Redskin home game at Fed-Ex Field, along with performances at Washington Wizards games at The Verizon Center. He has been a part of a "Dewey Tradition" for the past fourteen summers, playing “Suicide Sunday” afternoon deck parties at the world famous Starboard in Dewey Beach, DE. 

Performing solo or with his band of many sizes, Doug Segree specializes in private events and has performed at functions throughout the country –playing parties of all sizes ranging from thousands of guests to small backyard gatherings, corporate events, weddings, birthday’s, graduations, grand openings, auctions – you name it and they’ve done it! 

Doug has also successfully recorded and released four albums on the indie label, Kid Arnold Records and spent many years on the concert stage performing his own material. He has shared the stage with some amazing artists including Matchbox 20, Sister Hazel, Edwin McCain, Pat McGee Band, Mark Broussard, Derek Trucks, The Coral Reef Band, George Clinton and P-Funk, Dave Edmunds, Less Than Jake and Dave Mason of Traffic. 

He has had his songs aired on major network television – ABC (Cougartown), Cinemax (various films), the DVD version of the WB network’s TV show "Felicity", and has been included on various CD compilations released nationwide.

One notable career highlight was performing the National Anthem live, televised for millions on the NFL network at Fed-Ex Field for the Redskins/Bears December 2007 game. Doug contributes his many talents donating his time and services to important causes like the Summitt School, Friends Foundation, The Boys and Girls Club, Breast Cancer Foundation and the SPCA just to name a few. In addition to completing a new studio recording, he is also working on a children’s album.
EOD

dsb = Act.create({:name => 'Doug Segree Band', :description => dsb_description})
dsb.links.build({:weblocation => www, :url => 'http://www.dougsegree.com/'})
dsb.save!

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

tw_description = <<EOD
Total Whiteout doesn't just bring the party, they are the party. Playing an incredibly energetic set with selections ranging from Journey to The Backstreet Boys to LMFAO, Total Whiteout utilizes their versatility to keep their crowds energized from start to finish. Whether it be one of their high-tempo guitar/keyboard solos or one of their groovy dance beats, Eric, Pete, Chris, Kevin, and Isaiah use all of their available tools to put together a non-stop exciting show. With years of experience playing between the different members of the band but at an impressively young age, Total Whiteout is the perfect fit for almost any venue that's looking for a great time.
EOD

tw = Act.create({:name => 'Total Whiteout', :hometown => 'State College, PA', :description => tw_description})
tw.links.build({:weblocation => facebook, :url => 'http://www.facebook.com/totalwhiteout'})
tw.save!

# DJs
djs = Act.create({:name => 'SmokyTheWhore', :description => 'Smoky is the best DJ in Dewey Beach every summer, with that silky smooth voice and camera that takes amazing candid photos. Outside of Dewey, he will work any gig...weddings, memorials, Klan rallies disguised as weddings, etc! He will even wear a Redskins jersey to a gig even though he is a DIEHARD Steelers fan...his excuse "Dan Snyder writes the check, I wear his jersey!" He will play any type of music for the right price...Celine Dion may cost you a little more, but he will play it! ABBA? You betcha!!!! His "Man Card" has been pulled on multiple occassions, his "Black Card" was pulled when he played "Sweet Home Alabama"
We love SmokyTheWhore!'})
djs.links.build({:weblocation => www, :url => 'http://smokythedj.com/'})
djs.save!

djjh_description = <<EOD
A transplant from D.C., DJ John Hardy has been at The Starboard for 27 years. “I got a prison sentence imposing community service,” he explains, but many give assurances that John’s long hours behind the DJ booth have never been subject to conditions of solitary confinement. Even so, he says his favorite Starboard moments come at closing time. “I can’t wait to get home to my baby!”

John Hardy claims line dancing as his favorite sport, the American Legion as his favorite team and puts gumdrops on the pinnacle of his food pyramid. “Harold and Maude” gets top movie billing, while he awards the best actor and actress slots to Popeye and Marilyn Chambers. On Saturday mornings you might catch him watching Road Runner cartoons over a glass of grape juice, which he says is his favorite drink.

Known for traveling the country and bringing the hottest new music to The Starboard for decades, John Hardy’s all-time musical favorite is “Off to See the Wizard.” But his personal music selection doesn’t impede his ability to entertain The Starboard’s patrons. “They’re the most wonderful people in the whole wide world,” he says.
EOD

djjh = Act.create({:name => 'DJ John Hardy', :description => djjh_description})
djjh.save!

mhatl_description = <<EOD
Mike Hines is a very experienced, suave talent with a distinctive tenor/baritone voice. His smooth yet forceful vocal stylings ignite a fire in the soul of the listener. The singer/songwriter's highly energized entertaining stage performance is second to none. The Delaware State News declares: "Any man that can musically persuade dance floor crowds to endure and generate significant body heat on an already 80 degree-plus evening qualifies as nothing less than impressive." Hines' songwriting uniquely blends the old with the new; creating a sound that is original and captivating. He writes from the heart about love, romance and relationships. His songs weave a common thread drawing listeners of all types, who can relate intimately with his songs of passion. Mike's soulful stylings reflect a strong sense of R&B history. His lyrics resonate with the influence of greats from the past, such as Smokey, Stevie, Michael and Prince as well as Babyface, Jam and Lewis. With charisma, dynamic vocal ability and awesome stage presence, this singer/songwriter soars above the crowd!
EOD

mhatl = Act.create({:name => 'Mike Hines & The Look', :description => mhatl_description})
mhatl.links.build({:weblocation => www, :url => 'http://www.mikehines.com'})
mhatl.save!

e9_description = <<EOD
Gli E-ninth o "E9" nascono nel 2008, sono una band emergente abruzzese che propone brani "old school" improntati principalmente su uno stile Rock/Funk/Blues (Jimi Hendrix/Extreme..) con accenni anche al più recente "Progressive/Shred" accompagnati da un sound molto musicale e allo stesso tempo aggressivo. Il nome della band "E9" sta per Mi Nona, accordo che, secondo i membri della band, può risultare misterioso, triste e allo stesso tempo "molto Funk", nel quale viene racchiuso un vero e proprio genere musicale da quell'infinito genio di Jimi Hendrix. La band propone svariate cover "Hendrixiane" riadattate nello stile"E9" (i botta e risposta tra le 2 chitarre ne sono l'esempio più lampante...). La Band suona e riarrangia anche su cover di noti artisti, affiancandole a brani inediti prettamente strumentali.

Google Translation: The E-ninth or "E9" born in 2008, is an emerging band featuring songs Abruzzo "old school" characterized primarily a style of Rock / Funk / Blues (Jimi Hendrix / Extreme ..) with references even to the most recent "Progressive / Shred" accompanied by a sound very musical and at the same time aggressive. The band name "E9" is for me Nona, an agreement that, according to members of the band, may be mysterious, and sad at the same time "very Funk", which is enclosed in a real musical genre from the infinite genius Jimi Hendrix. The band offers a variety of cover "Hendrixiane" repurposed style "E9" (the repartee between the 2 guitars are the best example ...). The band plays and a new arrangement also covers of famous artists and supporting them in new songs purely instrumental.
EOD

e9 = Act.create({:name => 'E9', :description => e9_description})
e9.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/e9band'})
e9.save!



# ***Events***

# Jam Session
js = Event.create({:name => 'Jam Session', :description => 'Saturday Jam with three bands.'})
js.links.build({:weblocation => www, :url => 'http://www.deweybeachlife.com/'})
js.save!

# Taco Toss
tt = Event.create({:name => 'Taco Toss', :description => 'Friday happy hour featuring Orange Crushes and $1 tacos and hot dogs.'})
tt.links.build({:weblocation => www, :url => 'http://www.ruddertowneusa.com/The-Lighthouse.html' })
tt.save!

# Rudder's Saturday Night Concert
scrr = Event.create({:name => "Rusty Rudder Saturday Night", :description => 'Saturday Night Concert at the Rudder.'})
scrr.links.build({:weblocation => www, :url => 'http://www.deweybeachlife.com'})
scrr.save!

# Rudder's Opening
ro = Event.create({:name => "Rusty Rudder Opening", :description => "St. Patty's Day & Dewey Beach Opening Weekend"})
ro.links.build({:weblocation => www, :url => 'http://www.deweybeachlife.com'})
ro.save!

# Starboard Opening
so_description = <<EOD
The countdown has been on for weeks...the excitement is definitely building...it's time to get serious about the greatest weekend of the year...STARBOARD OPENING! 

The parking lot will be TENTED IN as usual, making room to handle the crowds heading this way in celebration of The Starboard! I am quite positive you are all going to be extremely pleased with some of the changes made over our winter 'break'... while not exactly a break cause several of us have been here regularly making upgrades so The Starboard can continue to be the pace car of restaurant and bar business in Dewey Beach!
EOD
so = Event.create({:name => "Starboard Opening", :description => so_description})
so.links.build({:weblocation => www, :url => 'http://www.thestarboard.com/'})
so.save!

# The Bangles
tb_concert = Event.create({:name => 'The Bangles', :description => 'a night with the bangles'})
tb_concert.links.build({:weblocation => www, :url => 'http://www.deweybeachfest.com/dbcf_cork.html'})
tb_concert.save!

# George Clinton
gc_concert = Event.create({:name => 'George Clinton & Parliament Funkadelic', :description => 'Up for the down stroke'})
gc_concert.links.build({:weblocation => www, :url => 'http://www.deweybeachfest.com/dbcf_cork.html'})
gc_concert.save!

#Dewey Beach Music Conference
dbmc = Event.create({:is_special => true, :name => 'Dewey Beach Music Conference', :description => 'DBMC may not be the biggest music conference in the northeast, but it has garnered more than its fair share of critical acclaim, rave reviews and enthusiastic return participants. This is due in no small part to the consistent quality of talent and its location.'})
dbmc.links.build({:weblocation => www, :url => 'http://www.deweybeachfest.com/dbmc/' })
dbmc.save!

# DJ Smoky
djse = Event.create({:name => 'The Starboard Saturday Night', :description => 'Smoky spins some shit on his iPod.'})
djse.links.build({:weblocation => www, :url => 'http://www.thestarboard.com/' })
djse.save!

# Running Of The Bull
rotb = Event.create({:name => 'Running Of The Bull', :description => 'Drunk people chase 2 guys in a bull costume.' })
rotb.links.build({:weblocation => www, :url => 'http://therunningofthebull.com/'})
rotb.save!


# ***Occurrences***

# Starboard Opening
so1 = so.occurrences.build({:event_start => '2012-03-15T9:00:00+00:00', :event_end => '2012-03-16T01:00:00+00:00'})
so1.save!

so2 = so.occurrences.build({:event_start => '2012-03-16T9:00:00+00:00', :event_end => '2012-03-17T01:00:00+00:00'})
so2.save!

so3 = so.occurrences.build({:event_start => '2012-03-17T9:00:00+00:00', :event_end => '2012-03-18T01:00:00+00:00'})
so3.save!

so4 = so.occurrences.build({:event_start => '2012-03-18T9:00:00+00:00', :event_end => '2012-03-19T01:00:00+00:00'})
so4.save!


# rudder opening
ro1 = ro.occurrences.build({:event_start => '2012-03-16T21:00:00+00:00', :event_end => '2012-03-17T01:00:00+00:00'})
ro1.save!

ro2 = ro.occurrences.build({:event_start => '2012-03-17T12:00:00+00:00', :event_end => '2012-03-18T01:00:00+00:00'})
ro2.save!


# Jam 1
# js1 = js.occurrences.build({:event_start => '2011-07-02T17:00:00+00:00', :event_end => '2011-07-03T01:00:00+00:00'})
# js1.save!

# Jam 2
# js2 = js.occurrences.build({:event_start => '2011-07-09T17:00:00+00:00', :event_end => '2011-07-10T01:00:00+00:00'})
# js2.save!

# Jam 3
# js3 = js.occurrences.build({:event_start => '2011-07-16T17:00:00+00:00', :event_end => '2011-07-17T01:00:00+00:00'})
# js3.save!

# Jam 4
# js4 = js.occurrences.build({:event_start => '2011-07-23T17:00:00+00:00', :event_end => '2011-07-24T01:00:00+00:00'})
# js4.save!

# Jam 5
# js5 = js.occurrences.build({:event_start => '2011-07-30T17:00:00+00:00', :event_end => '2011-07-31T01:00:00+00:00'})
# js5.save!

# Taco Toss 1
# tt1 = tt.occurrences.build({:event_start => '2011-07-01T16:00:00+00:00', :event_end => '2011-07-01T21:00:00+00:00'})
# tt1.save!

# Taco Toss 2
# tt2 = tt.occurrences.build({:event_start => '2011-07-08T16:00:00+00:00', :event_end => '2011-07-08T21:00:00+00:00'})
# tt2.save!

# Taco Toss 3
# tt3 = tt.occurrences.build({:event_start => '2011-07-15T16:00:00+00:00', :event_end => '2011-07-15T21:00:00+00:00'})
# tt3.save!

# Taco Toss 4
# tt4 = tt.occurrences.build({:event_start => '2011-07-22T16:00:00+00:00', :event_end => '2011-07-22T21:00:00+00:00'})
# tt4.save!

# Taco Toss 5
# tt5 = tt.occurrences.build({:event_start => '2011-07-29T16:00:00+00:00', :event_end => '2011-07-29T21:00:00+00:00'})
# tt5.save!

# Rusty Rudder Saturday Night Concert 1
# scrr1 = scrr.occurrences.build({:event_start => '2011-07-02T21:00:00+00:00', :event_end => '2011-07-03T01:00:00+00:00'})
# scrr1.save!

# Rusty Rudder Saturday Night Concert 2
# scrr2 = scrr.occurrences.build({:event_start => '2011-07-09T21:00:00+00:00', :event_end => '2011-07-10T01:00:00+00:00'})
# scrr2.save!

# Rusty Rudder Saturday Night Concert 3
# scrr3 = scrr.occurrences.build({:event_start => '2011-07-16T21:00:00+00:00', :event_end => '2011-07-17T01:00:00+00:00'})
# scrr3.save!

# Rusty Rudder Saturday Night Concert 4
# scrr4 = scrr.occurrences.build({:event_start => '2011-07-23T21:00:00+00:00', :event_end => '2011-07-24T01:00:00+00:00'})
# scrr4.save!

# Rusty Rudder Saturday Night Concert 5
# scrr5 = scrr.occurrences.build({:event_start => '2011-07-30T21:00:00+00:00', :event_end => '2011-07-31T01:00:00+00:00'})
# scrr5.save!

# The Bangles
# tb1 = tb_concert.occurrences.build({:cover_charge => '15.99', :event_start => '2011-07-05T20:00:00+00:00', :event_end => '2011-07-06T01:00:00+00:00'})
# tb1.save!

# George Clinton
# gc1 = gc_concert.occurrences.build({:cover_charge => '25.00', :event_start => '2011-07-23T20:00:00+00:00', :event_end => '2011-07-24T01:00:00+00:00'})
# gc1.save!

#Dewey Beach Music Conference 2011 Occurrence
# dbmc2011 = dbmc.occurrences.build({:event_start => '2011-09-22T21:40:00+00:00', :event_end => '2011-09-25T01:00:00+00:00'})
# dbmc2011.save!

# DJ Smoky 1
# djse1 = djse.occurrences.build({:event_start => '2011-07-01T21:00:00+00:00', :event_end => '2011-07-02T01:00:00+00:00'})
# djse1.save!

# DJ Smoky 2
# djse2 = djse.occurrences.build({:event_start => '2011-07-08T21:00:00+00:00', :event_end => '2011-07-09T01:00:00+00:00'})
# djse2.save!

# DJ Smoky 3
# djse3 = djse.occurrences.build({:event_start => '2011-07-15T21:00:00+00:00', :event_end => '2011-07-16T01:00:00+00:00'})
# djse3.save!

# DJ Smoky 4
# djse4 = djse.occurrences.build({:event_start => '2011-07-22T21:00:00+00:00', :event_end => '2011-07-23T01:00:00+00:00'})
# djse4.save!

# DJ Smoky 5
# djse5 = djse.occurrences.build({:event_start => '2011-07-29T21:00:00+00:00', :event_end => '2011-07-30T01:00:00+00:00'})
# djse5.save!

# Running of the Bull 2011
# rotb2011 = rotb.occurrences.build({:event_start => '2011-07-09T11:00:00+00:00', :event_end => '2011-07-09T15:00:00+00:00'})
# rotb2011.save!




# ***Performances***

# # Jam 1
# js1.performances.build({:location => bc1, :act => lsmj, :priority => 1, :performance_start => '2011-07-02T17:00:00+00:00', :performance_end => '2011-07-03T01:00:00+00:00'}).save!
# js1.performances.build({:location => bc1, :act => la,   :priority => 2, :performance_start => '2011-07-02T17:00:00+00:00', :performance_end => '2011-07-03T01:00:00+00:00'}).save!
# js1.performances.build({:location => bc1, :act => ggg,  :priority => 3, :performance_start => '2011-07-02T17:00:00+00:00', :performance_end => '2011-07-03T01:00:00+00:00'}).save!
# 
# # Jam 2
# js2.performances.build({:location => bc1, :act => gg, :priority => 1, :performance_start => '2011-07-09T17:00:00+00:00', :performance_end => '2011-07-10T01:00:00+00:00'}).save!
# js2.performances.build({:location => bc1, :act => bs, :priority => 2, :performance_start => '2011-07-09T17:00:00+00:00', :performance_end => '2011-07-10T01:00:00+00:00'}).save!
# js2.performances.build({:location => bc1, :act => sd, :priority => 3, :performance_start => '2011-07-09T17:00:00+00:00', :performance_end => '2011-07-10T01:00:00+00:00'}).save!
# 
# # Jam 3
# js3.performances.build({:location => bc1, :act => la,  :priority => 1, :performance_start => '2011-07-16T17:00:00+00:00', :performance_end => '2011-07-17T01:00:00+00:00'}).save!
# js3.performances.build({:location => bc1, :act => ek,  :priority => 2, :performance_start => '2011-07-16T17:00:00+00:00', :performance_end => '2011-07-17T01:00:00+00:00'}).save!
# js3.performances.build({:location => bc1, :act => t10, :priority => 3, :performance_start => '2011-07-16T17:00:00+00:00', :performance_end => '2011-07-17T01:00:00+00:00'}).save!
# 
# # Jam 4
# js4.performances.build({:location => bc1, :act => _3am, :priority => 1, :performance_start => '2011-07-23T17:00:00+00:00', :performance_end => '2011-07-24T01:00:00+00:00'}).save!
# js4.performances.build({:location => bc1, :act => ls,   :priority => 2, :performance_start => '2011-07-23T17:00:00+00:00', :performance_end => '2011-07-24T01:00:00+00:00'}).save!
# js4.performances.build({:location => bc1, :act => la,   :priority => 3, :performance_start => '2011-07-23T17:00:00+00:00', :performance_end => '2011-07-24T01:00:00+00:00'}).save!
# 
# # Jam 5
# js5.performances.build({:location => bc1, :act => kn,  :priority => 1, :performance_start => '2011-07-30T17:00:00+00:00', :performance_end => '2011-07-31T01:00:00+00:00'}).save!
# js5.performances.build({:location => bc1, :act => ggg, :priority => 2, :performance_start => '2011-07-30T17:00:00+00:00', :performance_end => '2011-07-31T01:00:00+00:00'}).save!
# js5.performances.build({:location => bc1, :act => la,  :priority => 3, :performance_start => '2011-07-30T17:00:00+00:00', :performance_end => '2011-07-31T01:00:00+00:00'}).save!
# 
# # Taco Toss 1
# tt1.performances.build({:location => lh1, :act => djjj, :performance_start => '2011-07-01T16:00:00+00:00', :performance_end => '2011-07-01T21:00:00+00:00' }).save!
# 
# # Taco Toss 2
# tt2.performances.build({:location => lh1, :act => djjj, :performance_start => '2011-07-08T16:00:00+00:00', :performance_end => '2011-07-08T21:00:00+00:00' }).save!
# 
# # Taco Toss 3
# tt3.performances.build({:location => lh1, :act => djjj, :performance_start => '2011-07-15T16:00:00+00:00', :performance_end => '2011-07-15T21:00:00+00:00' }).save!
# 
# # Taco Toss 4
# tt4.performances.build({:location => lh1, :act => djjj, :performance_start => '2011-07-22T16:00:00+00:00', :performance_end => '2011-07-22T21:00:00+00:00' }).save!
# 
# # Taco Toss 5
# tt5.performances.build({:location => lh1, :act => djjj, :performance_start => '2011-07-29T16:00:00+00:00', :performance_end => '2011-07-29T21:00:00+00:00' }).save!
# 
# 
# # Rusty Rudder Saturday Night Concert 1
# scrr1.performances.build({:location => rr1, :act => kn, :performance_start => '2011-07-02T21:00:00+00:00', :performance_end => '2011-07-03T01:00:00+00:00' }).save!
# 
# # Rusty Rudder Saturday Night Concert 2
# scrr2.performances.build({:location => rr1, :act => kn, :performance_start => '2011-07-09T21:00:00+00:00', :performance_end => '2011-07-10T01:00:00+00:00' }).save!
# 
# # Rusty Rudder Saturday Night Concert 3
# scrr3.performances.build({:location => rr1, :act => gg, :performance_start => '2011-07-16T21:00:00+00:00', :performance_end => '2011-07-17T01:00:00+00:00' }).save!
# 
# # Rusty Rudder Saturday Night Concert 4
# scrr4.performances.build({:location => rr1, :act => sd, :performance_start => '2011-07-23T21:00:00+00:00', :performance_end => '2011-07-24T01:00:00+00:00' }).save!
# 
# # Rusty Rudder Saturday Night Concert 5
# scrr5.performances.build({:location => rr1, :act => cr, :performance_start => '2011-07-30T21:00:00+00:00', :performance_end => '2011-07-31T01:00:00+00:00' }).save!

# 
# # The Bangles
# tb1.performances.build({:location => bc1, :act => tb, :priority => 0, :performance_start => '2011-07-05T22:00:00+00:00', :performance_end => '2011-07-06T01:00:00+00:00' }).save!
# tb1.performances.build({:location => bc1, :act => as, :priority => 1, :performance_start => '2011-07-05T21:00:00+00:00', :performance_end => '2011-07-05T21:40:00+00:00' }).save!
# 
# # George Clinton
# gc1.performances.build({:location => bc1, :act => gc, :priority => 0, :performance_start => '2011-07-23T21:00:00+00:00', :performance_end => '2011-07-24T01:00:00+00:00' }).save!
# 
# # Dewey Beach Music Conference
# dbmc2011.performances.build({:location => ms1, :act => lauraMarie, :performance_start => '2011-09-23T21:30:00+00:00', :performance_end => '2011-09-23T22:00:00+00:00'}).save!
# dbmc2011.performances.build({:location => wg1, :act => liat, :performance_start => '2011-09-24T21:00:00+00:00', :performance_end => '2011-09-24T22:00:00+00:00'}).save!
# dbmc2011.performances.build({:location => jg1, :act => lizBethRose, :performance_start => '2011-09-24T20:00:00+00:00', :performance_end => '2011-09-24T11:00:00+00:00'}).save!
# dbmc2011.performances.build({:location => gdbg1, :act => loriCitro, :performance_start => '2011-09-24T22:00:00+00:00', :performance_end => '2011-09-24T22:30:00+00:00'}).save!
# dbmc2011.performances.build({:location => rrc, :act => loveViaDanceMachine, :performance_start => '2011-09-23T21:00:00+00:00', :performance_end => '2011-09-23T21:40:00+00:00'}).save!
# dbmc2011.performances.build({:location => rrb, :act => lovebettie, :performance_start => '2011-09-24T22:20:00+00:00', :performance_end => '2011-09-24T23:00:00+00:00'}).save!
# dbmc2011.performances.build({:location => rrd, :act => lowercaseblues, :performance_start => '2011-09-23T00:20:00+00:00', :performance_end => '2011-09-23T01:00:00+00:00'}).save!
# dbmc2011.performances.build({:location => ms1, :act => luciar, :performance_start => '2011-09-23T21:00:00+00:00', :performance_end => '2011-09-23T21:30:00+00:00'}).save!
# dbmc2011.performances.build({:location => bca, :act => luckyDub, :performance_start => '2011-09-24T23:00:00+00:00', :performance_end => '2011-09-24T23:40:00+00:00'}).save!
# dbmc2011.performances.build({:location => bcb, :act => zakSmithBand, :performance_start => '2011-09-24T21:00:00+00:00', :performance_end => '2011-09-24T21:40:00+00:00'}).save!
# dbmc2011.performances.build({:location => jg1, :act => liat, :performance_start => '2011-09-23T21:00:00+00:00', :performance_end => '2011-09-23T22:00:00+00:00'}).save!
# dbmc2011.performances.build({:location => bcb, :act => gg, :performance_start => '2011-09-23T21:00:00+00:00', :performance_end => '2011-09-23T22:00:00+00:00'}).save!
# 

# Thursday - DJ John Hardy
# Friday - DJ Smoky
# Saturday - Doug Segree Band 2-6pm
# DJ's John Hardy & Smoky
# Sunday - Kristen and Joe Acoustic 2-6pm
# DJ's John Hardy & Smoky

so1.performances.build({:location => sb1, :act => djjh, :performance_start => '2012-03-15T9:00:00+00:00', :performance_end => '2012-03-16T01:00:00+00:00' }).save!

so2.performances.build({:location => sb1, :act => djs, :performance_start => '2012-03-16T9:00:00+00:00', :performance_end => '2012-03-17T01:00:00+00:00' }).save!

so3.performances.build({:location => sb1, :act => dsb, :performance_start => '2012-03-17T14:00:00+00:00', :performance_end => '2012-03-17T18:00:00+00:00' }).save!
so3.performances.build({:location => sb1, :act => djjh, :performance_start => '2012-03-17T9:00:00+00:00', :performance_end => '2012-03-18T1:00:00+00:00' }).save!
so3.performances.build({:location => sb1, :act => djs, :performance_start => '2012-03-17T9:00:00+00:00', :performance_end => '2012-03-18T1:00:00+00:00' }).save!

so4.performances.build({:location => sb1, :act => kj, :performance_start => '2012-03-18T14:00:00+00:00', :performance_end => '2012-03-18T18:00:00+00:00' }).save!
so4.performances.build({:location => sb1, :act => djjh, :performance_start => '2012-03-18T9:00:00+00:00', :performance_end => '2012-03-19T1:00:00+00:00' }).save!
so4.performances.build({:location => sb1, :act => djs, :performance_start => '2012-03-18T9:00:00+00:00', :performance_end => '2012-03-19T1:00:00+00:00' }).save!

# Rusty Rudder Opening
ro1.performances.build({:location => rr1, :act => mhatl, :performance_start => '2012-03-16T21:00:00+00:00', :performance_end => '2012-03-17T01:00:00+00:00' }).save!
ro1.performances.build({:location => rr1, :act => e9, :performance_start => '2012-03-16T21:00:00+00:00', :performance_end => '2012-03-17T01:00:00+00:00' }).save!

ro2.performances.build({:location => rr1, :act => lsmj, :performance_start => '2012-03-17T21:00:00+00:00', :performance_end => '2012-03-18T01:00:00+00:00' }).save!
ro2.performances.build({:location => rr1, :act => tw, :performance_start => '2012-03-17T21:00:00+00:00', :performance_end => '2012-03-18T01:00:00+00:00' }).save!



# # DJ Smoky 1
# djse1.performances.build({:location => sb1, :act => djs, :performance_start => '2011-07-01T21:00:00+00:00', :performance_end => '2011-07-02T01:00:00+00:00', :priority => 0 }).save!
# 
# # DJ Smoky 2
# djse2.performances.build({:location => sb1, :act => djs, :performance_start => '2011-07-08T21:00:00+00:00', :performance_end => '2011-07-09T01:00:00+00:00', :priority => 0 }).save!
# 
# # DJ Smoky 3
# djse3.performances.build({:location => sb1, :act => djs, :performance_start => '2011-07-15T21:00:00+00:00', :performance_end => '2011-07-16T01:00:00+00:00', :priority => 0 }).save!
# 
# # DJ Smoky 4
# djse4.performances.build({:location => sb1, :act => djs, :performance_start => '2011-07-22T21:00:00+00:00', :performance_end => '2011-07-23T01:00:00+00:00', :priority => 0 }).save!
# 
# # DJ Smoky 5
# djse5.performances.build({:location => sb1, :act => djs, :performance_start => '2011-07-29T21:00:00+00:00', :performance_end => '2011-07-30T01:00:00+00:00', :priority => 0 }).save!
# 
# # DJ Smoky Running of the Bull 2011
# rotb2011.performances.build({:location => sb1, :act => djs, :performance_start => '2011-07-09T11:00:00+00:00', :performance_end => '2011-07-09T15:00:00+00:00', :priority => 2 }).save!
# 
# # Laura Lea Running of the Bull 2011
# rotb2011.performances.build({:location => sb1, :act => tf, :performance_start => '2011-07-09T11:00:00+00:00', :performance_end => '2011-07-09T15:00:00+00:00', :priority => 1 }).save!








