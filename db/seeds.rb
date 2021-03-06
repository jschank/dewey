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


# *** Weblocations ***
facebook     = Weblocation.create!({:name => "Facebook"})
facebook.logo = File.open("public/uploads/weblocation/"+ facebook.name.parameterize + "-logo.png")
facebook.save!

itunes       = Weblocation.create!({:name => "iTunes"})
itunes.logo = File.open("public/uploads/weblocation/"+ itunes.name.parameterize + "-logo.png")
itunes.save!

myspace      = Weblocation.create!({:name => "MySpace"})
myspace.logo = File.open("public/uploads/weblocation/"+ myspace.name.parameterize + "-logo.png")
myspace.save!

twit         = Weblocation.create!({:name => "Twitter"})
twit.logo = File.open("public/uploads/weblocation/"+ twit.name.parameterize + "-logo.png")
twit.save!

www          = Weblocation.create!({:name => "Web"})
www.logo = File.open("public/uploads/weblocation/"+ www.name.parameterize + "-logo.png")
www.save!

youtube      = Weblocation.create!({:name => "YouTube"})
youtube.logo = File.open("public/uploads/weblocation/"+ youtube.name.parameterize + "-logo.png")
youtube.save!

email        = Weblocation.create!({:name => "email"})
email.logo = File.open("public/uploads/weblocation/"+ email.name.parameterize + "-logo.png")
email.save!

bandcamp     = Weblocation.create!({:name => "bandcamp"})
bandcamp.logo = File.open("public/uploads/weblocation/"+ bandcamp.name.parameterize + "-logo.png")
bandcamp.save!

bigcartel    = Weblocation.create!({:name => "bigcartel"})
bigcartel.logo = File.open("public/uploads/weblocation/"+ bigcartel.name.parameterize + "-logo.png")
bigcartel.save!

jango        = Weblocation.create!({:name => "jango"})
jango.logo = File.open("public/uploads/weblocation/"+ jango.name.parameterize + "-logo.png")
jango.save!

lastfm       = Weblocation.create!({:name => "last.fm"})
lastfm.logo = File.open("public/uploads/weblocation/"+ lastfm.name.parameterize + "-logo.png")
lastfm.save!

ourstage     = Weblocation.create!({:name => "OurStage"})
ourstage.logo = File.open("public/uploads/weblocation/"+ ourstage.name.parameterize + "-logo.png")
ourstage.save!

pandora      = Weblocation.create!({:name => "Pandora"})
pandora.logo = File.open("public/uploads/weblocation/"+ pandora.name.parameterize + "-logo.png")
pandora.save!

reverb       = Weblocation.create!({:name => "ReverbNation"})
reverb.logo = File.open("public/uploads/weblocation/"+ reverb.name.parameterize + "-logo.png")
reverb.save!

sonicbids    = Weblocation.create!({:name => "sonicbids"})
sonicbids.logo = File.open("public/uploads/weblocation/"+ sonicbids.name.parameterize + "-logo.png")
sonicbids.save!

tumblr       = Weblocation.create!({:name => "tumblr"})
tumblr.logo = File.open("public/uploads/weblocation/"+ tumblr.name.parameterize + "-logo.png")
tumblr.save!


# ***Venues***

# *** Rusty Rudder ***
rudder = Venue.create!({:name => 'Rusty Rudder', :description => 'The Rusty Rudder is a live music club and restaurant located next to the bay.', :address1 => '113 Dickinson St.', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-3888'})
rudder.logo = File.open("public/uploads/venue/"+ rudder.name.parameterize + "-logo.png")
rudder1 = rudder.locations.build({:name => "all"})
ruddera = rudder.locations.build({:name => "Outside Stage A"})
rudderb = rudder.locations.build({:name => "Outside Stage B"})
rudderc = rudder.locations.build({:name => "Inside Stage C"})
rudderd = rudder.locations.build({:name => "Inside Stage D"})
rudder.links.build( {:weblocation => www, :url => "http://www.deweybeachlife.com/dning_rr.html"})
rudder.save!


# Starboard
sb = Venue.create({:name => 'The Starboard', :description => "The Heart of Dewey Beach Delaware and home of the world's greatest bloody mary bar.", :address1 => '2009 Highway One', :city => 'Dewey Beach', :state => 'DE', :zip => '19971', :phone => '302-227-4600'})
sb.logo = File.open("public/uploads/venue/"+ sb.name.parameterize + "-logo.png")
sb1 = sb.locations.build({:name => "all"})
sba = sb.locations.build({:name => "Main Stage"})
sbb = sb.locations.build({:name => "Deck Stage"})
sb.links.build( {:weblocation => www, :url => "http://www.thestarboard.com/"})
sb.save!



# *** Acts ***


# *** Colourslide ***
colourslide_description = <<EOD
Colourslide is Alex Lawhon, Dean Newman, and Quincy Mooring. You will learn more about us in good time.
EOD

colourslide = Act.create({:name => 'Colourslide', :description => colourslide_description, :hometown => 'Gainsville, FL'})
colourslide.logo = File.open("public/uploads/act/"+ colourslide.name.parameterize + "-logo.png")
colourslide.links.build({:weblocation => www, :url => 'http://colourslide.com/'})
colourslide.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/Colourslide'})
colourslide.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/colourslide'})
colourslide.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/colourslide'})
colourslide.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/ColourslideVideo'})
colourslide.save!


# *** Chip Greene ***
chipgreene_description = <<EOD
Chip Greene’s métier is matters of the heart. That alone doesn’t make him an original, but his meticulous examination of all the intricacies of a relationship is a great deal more detail-oriented than average. Hailing from Nashville, TN, Greene pens wistful tales of love and loss. His classic approach to melody is updated with layers of electronic textures, yielding atmospheric pop gems. 

A talent that grew from a pre-teen passion into a life calling was raised by top-shelf song-writing influences from Joel to Springsteen, with the energy and emotion of U2 or Coldplay.  Greene digs deeply into a world of of determinate, piercing, and powerful thoughts.  His alternative edge and classic, epic sound have earned him an ever-growing fan base and applause-worthy merit.

Greene's emotionally candid and poignant songs have charted in CMJ and been featured on Sirius XM Radio's Radar Report and in projects by MTV, Sprite and Eddie Bauer.  He stands as one of the top unsigned acts on the radar, ready to lead the best of the rest.
EOD

## Notice the way the filename is done here, this solves the problem of carrierwave deleting the images from the public/uploads/acts
## folder when running in development. So what we want is a shadow copy of the logo files, that carrierwave does not know about, so that
## the files can be restored. Seeds could pull from there (or some public weblocation - possibly dropbox), or we could create a rake task
## to update logos.
chipgreene = Act.create({:name => 'Chip Greene', :description => chipgreene_description, :hometown => 'Nashville, TN'})
filename = "public/uploads/act/"+ chipgreene.name.parameterize + "-logo.png"
chipgreene.logo = File.open(filename) if File.exists? filename
chipgreene.links.build({:weblocation => www, :url => 'http://www.chipgreene.com/'})
chipgreene.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/chipgreene'})
chipgreene.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/chipgreene'})
chipgreene.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/chipgreene'})
chipgreene.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/chipgreene1'})
chipgreene.links.build({:weblocation => pandora, :url => 'http://www.pandora.com/?_sl=1&searchToken=chip+greene'})
chipgreene.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/chipgreene'})
chipgreene.links.build({:weblocation => lastfm, :url => 'http://www.last.fm/music/Chip+Greene'})
chipgreene.links.build({:weblocation => ourstage, :url => 'http://www.ourstage.com/profile/chipgreene'})
chipgreene.links.build({:weblocation => jango, :url => 'http://www.jango.com/music/Chip+Greene?l=0'})
chipgreene.save!


# *** Darling Parade ***
darlingparade_description = <<EOD
Darling Parade is a female fronted Rock/Pop band from Nashville, TN. Their first EP solidified their place in the music industry by landing TV Placements with ABC, The CW, and The SyFy Channel. The Latest EP “Until We Say It’s Over,” brought that point home by grabbing #8 on Billboard’s “Next Big Sound” chart the week of it’s release. The Nashville based group has one simple statement: Give it everything you have and leave with no regrets. Whether it’s driving 26 hours straight to make it just in time for a festival, or practicing in storage units before the big shows, they’ve done just that.
EOD

darlingparade = Act.create({:name => 'Darling Parade', :description => darlingparade_description, :hometown => 'Nashville, TN'})
darlingparade.logo = File.open("public/uploads/act/"+ darlingparade.name.parameterize + "-logo.png")
darlingparade.links.build({:weblocation => www, :url => 'http://darlingparade.com/'})
darlingparade.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/darlingparade'})
darlingparade.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/darlingparade'})
darlingparade.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/darlingparade'})
darlingparade.save!


# *** Darry Miller and The Veil ***
darrymiller_description = <<EOD
From an early age, Darry Miller’s life has been filled with music. His mom took him to his dad’s gigs as a baby and when he got his first drum set at three, he showed an intuitive ability to play. It wasn’t long before he was sitting in with the band, cutting his teeth on rock and roll.

As he got older, he began playing around with digital recording equipment and spent his formative years alone in the basement with it, experimenting with the layering of sounds, tones, harmonies and beats, igniting a true passion for music and an understanding of how powerful it can be.

The solitude Darry found in his basement while recording those first songs lent an intimacy to his lyrics then that he carries through to his songs today. Trying to understand life, love, loss and ambitions are a constant theme and are easily related to by his growing fan base. That fan base started when he passed some demos around to his friends at school and continues to expand as more people are turned on to his unique combination of pop, funk, blues and Americana.

In 2009, Darry signed with the independent label Ripple Creative Records and now tours with several very talented band members: Mike Elliot, Alan Greiner, Dylan Madar, and Derek Jenkins.  After many long ours writing and recording Darry released his first EP Green under Ripple Creative Records in March 2010.

Since that time, Darry Miller and The Veil has been playing shows all over the North East, multiplying there fan base with each and every show.  The band recorded 3 killer new songs in mid 2011, that have already been released, and can be heard LIVE at a show near you!  Once Darry’s vocals reach the tip of your ear drums, you will understand the buzz about how this is just the beginning to an amazing musical career for Darry Miller and The Veil.
EOD

darrymiller = Act.create({:name => 'Darry Miller and The Veil', :description => darrymiller_description, :hometown => 'Lancaster, PA'})
darrymiller.logo = File.open("public/uploads/act/"+ darrymiller.name.parameterize + "-logo.png")
darrymiller.links.build({:weblocation => www, :url => 'http://darrymillermusic.com/'})
darrymiller.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/darrymillermusic'})
darrymiller.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/DarryMiller'})
darrymiller.links.build({:weblocation => itunes, :url => 'http://itunes.apple.com/us/artist/darry-miller-and-the-veil/id366396004'})
darrymiller.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/user/darry1989'})
darrymiller.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/darrymillerandtheveil'})
darrymiller.save!


# *** Ducky Duke & The Vintage ***
duckyduke_description = <<EOD
One could describe the music of Harrisburg, PA's DUCKY AND THE VINTAGE in many ways as there are a lot of elements in one indie rock package. The dark but upbeat songs would be perfectly at home on the soundtrack for HBO's True Blood, but, perhaps the best way to describe it, is to get it straight from the Duck's mouth:

"My music is basically a rock 'n roll, bluesy country, soulful vibe with some pop infused," explains frontman/songwriter Matt 'Ducky Duke' Ryan. "I think the songs put across a vintage sound coupled with a more modern approach and they really sum up everything that I am as a person and a musician. It's just rock 'n roll in my own way."

To those who think the name Ducky is a shout out to Pretty In Pink, Ryan's stage moniker is simply a high school nickname that never quite went away. Says Ryan: "My best friend gave me that nickname after winning a stuffed duck out of a crane machine at a diner when we were in high school and it has just sort of stuck. I don't take myself too seriously, and therefore I think it suits me... most people tend to agree."

Ryan - self described as "quirky" and "very ADD" - might not take himself too seriously (meet him at a show and ask him to do his Speak-And-Spell impression), but his music is anything but whimsical. 'Take Our Souls Back' is a dark pop gem with a robotic drumbeat that envelopes the listener as Ryan's soulful vocals open with the lines "I didn't even think love was gonna be easy, but I didn't think I'd have to break your heart for you need me"

Days of The Walking Dead' starts off sounding like Ryan might be taking a cue from FRANZ FERDINAND before breaking into a hook laden chorus for a track that inexplicably sounds upbeat and eerie at the same time. Says Ryan: "The song is about understanding what is to come and preparing for it - taking the good with the bad and the bad with the good. It's about the days where just getting out of bed can feel like a zombie wandering around looking for brains."

Fortunately, when it comes to the music of DUCKY AND THE VINTAGE, there's not a lot of bad to have to take with the good.
EOD

duckyduke = Act.create({:name => 'Ducky Duke & The Vintage', :description => duckyduke_description, :hometown => 'Harrisburg, PA'})
duckyduke.logo = File.open("public/uploads/act/"+ duckyduke.name.parameterize + "-logo.png")
duckyduke.links.build({:weblocation => www, :url => 'http://www.masterkeymanagement.com/DUCKY_AND_THE_VINTAGE.html'})
duckyduke.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/Duckydukemusic'})
duckyduke.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/user/DuckyandTheVintage'})
duckyduke.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/artist/artist_songs/920445#!/duckyandthevintage'})
duckyduke.save!


# *** Find Vienna ***
findvienna_description = <<EOD
With Find Vienna, what you see is what you get. Four best friends decked out in fresh threads themed by their most recent release. Currently they look as if they step foot into the cockpit of a fighter jet regularly, fueled by their new EP In Flight.  The band claims that In Flight is their truest expression yet. They draw inspiration from “The battle artists fight everyday to make ends meet.” They term In Flight to mean, “We are four guys trying to make a living off of what we love the most and we always find ourselves being shot down to the ground, with the release of the new EP, we are planning to stay in flight.”

Find Vienna puts forth all of their effort into consistency. “We really try to keep our music honest. No gimmicks!” As heard by their vocalist Patrick who sounds like the right combination of Sting and Steve Perry, he believes every word he sings. The band is influenced by the great U2 and Jeff Buckley. As Ian’s guitar is reminiscent of an early Edge and Jeff Beck. Find Vienna stays true to their heartfelt soothing vibe. They are a band that wishes to ”One day have the perfect song for every moment, whether it’s heartbreak, romance, or bad weather.” With the release of In Flight, you may be convinced that they have reached their goal. However Find Vienna believes they still have a long way to go. “We will never stop making music, and there is nothing anyone can do about it.”

Since 2009, when the band first began, Find Vienna’s career has been anything but anti climatic. The release of their 2009 EP In Your Favorite Colors has brought a packed tour schedule playing with bands such as The Script, Neon Trees, Parachute, Green River Ordinance, Mae, and Company Of Thieves. Tracks from In Your Favorite Colors have also been placed in MTV and E! Network television shows, played on top 40 stations and on numerous online radio stations. The success of In Your Favorite Colors has placed Find Vienna in the hands of In De Goot Entertainment, the band’s current management company. Find Vienna claimed that “One day we will hold our glasses to In Your Favorite Colors,” and they did right before the release of In Flight.

In January of 2011 Find Vienna re-entered the studio to begin writing and recording for their first full-length debut album, working with producers Nick Didia, Dustin Burnett, and Brian Malouf. After a few months, they realized that they didn’t want to wait for a full-length. They wanted to release something sooner. As a result, Find Vienna decided to release a five-track EP called In Flight on December 22nd 2011. The EP “In Flight,” includes the track “Taking My Breath Away,” which was co-written by Find Vienna and Sam Hollander. All the tracks on the EP were mixed by the one and only Brian Malouf, and mastered by Andy Vandette. Find Vienna says “Though these tunes have taken us well over a year to get right, it was without doubt worth the wait.”

Armed with a new EP and live show, Find Vienna is poised to hit the road and up the ante.
EOD

findvienna = Act.create({:name => 'Find Vienna', :description => findvienna_description, :hometown => 'Philadelphia, PA'})
findvienna.logo = File.open("public/uploads/act/"+ findvienna.name.parameterize + "-logo.png")
findvienna.links.build({:weblocation => www, :url => 'http://www.wearefindvienna.com/'})
findvienna.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/findvienna'})
findvienna.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/findvienna'})
findvienna.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/findvienna'})
findvienna.links.build({:weblocation => itunes, :url => 'http://itunes.apple.com/us/album/in-flight-ep/id491198028'})
findvienna.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/findviennamusic'})
findvienna.save!


# *** Jay Loftus ***
jayloftus_description = <<EOD
Recently signed to producer super team KNS Productions (LADY GAGA, BRITNEY SPEARS, BACKSTREET BOYS), Jay Loftus, a 24 year old introspective singer/songwriter, was raised in Old Bridge, New Jersey. With thoughtful lyrics of everyday consequences, Jay's music perfectly fuses coffeehouse acoustic and pop rock genres. Currently working on his debut album, Jay has received amazing reactions from college campuses he's toured on the East Coast.

Jay Loftus began playing guitar for the same reason any 9 year old kid would: to be cool. But when Jay moved to a new school and became the overweight son of recently divorced parents, music became more than a social status, it was his refuge.

As a 12 year old recluse, Jay locked himself in his room transposing profound emotions into verses and melodies. Through heartache and tribulations Jay wrote about the ruthlessness of high school bullies, devastation of love loss, and sweet obsessions. High School performances eventually gained him popularity and respect.

Though Jay has been writing introspective songs about life experiences since the age of 12, his long journey as an artist and musician has just begun. "When you live what you write, the music writes itself." Musical influences include: 3rd Eye Blind, Goo Goo Dolls, Blink 182, Paul Simon, Damien Rice, Jason Mraz, Men at Work, John Mayer, and Ray Lamontagne. Say "hi" to Jay at jay@jayloftusmusic.com.
EOD

jayloftus = Act.create({:name => 'Jay Loftus', :description => jayloftus_description, :hometown => 'NJ'})
jayloftus.logo = File.open("public/uploads/act/"+ jayloftus.name.parameterize + "-logo.png")
jayloftus.links.build({:weblocation => www, :url => 'http://www.jayloftusmusic.com/'})
jayloftus.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/jayloftusmusic'})
jayloftus.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/imjayloftus'})
jayloftus.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/jayloftus'})
jayloftus.links.build({:weblocation => tumblr, :url => 'http://imjayloftus.tumblr.com/'})
jayloftus.links.build({:weblocation => email, :url => 'jay@jayloftusmusic.com'})
jayloftus.save!


# *** Jon Sandler & The Fancy Band ***
jonsandler_description = <<EOD
Jon Sandler and The Fancy Band is having a great year. They recently recorded a new EP titled “The Fancy Band” produced by Eric Zeiler (Xylos), signed with super duper records, and in August opened for Jimmy Buffett at the Nikon Theater at Jones Beach. With a soulful voice and dynamic songwriting, Jon’s style has been compared to a combination of John Lennon, Jason Mraz, Elton John and Ben Folds. His unique style has been heard throughout the New York City scene over the past four years where he has played over 150 shows at important venues such as Rockwood Music Hall (Stages 1 and 2), Mercury Lounge, Knitting Factory, Pianos, Arlene’s Grocery, Kenny's Castaways, Don Hills, Southpaw, and two sold out shows at the Triad Theater. Jon is currently writing original music for film and television projects, including a feature documentary and a theme song for a new television pilot. With a new website, merchanise, a music video, and full leghnth album on the horizon, Jon and his band (Sam Merrick, Dominic Fallacaro, Chris Kelly, Jens Kramer) are excited to embark on a fall tour in October. Enjoy these songs from the new EP and videos from various shows! 
EOD

jonsandler = Act.create({:name => 'Jon Sandler & The Fancy Band', :description => jonsandler_description, :hometown => 'New York, NY'})
jonsandler.logo = File.open("public/uploads/act/"+ jonsandler.name.parameterize + "-logo.png")
jonsandler.links.build({:weblocation => www, :url => 'http://jonsandler.com/'})
jonsandler.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/JonSandlerMusic'})
jonsandler.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/jonsandler'})
jonsandler.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/hooked772'})
jonsandler.save!


# *** June Divided ***
junedivided_description = <<EOD
Hey guys it’s Melissa. It’s late at night and I’ve decided to do something a little unorthodox with our bio here. I’m writing it, personally, just for you.

Since I’m writing this story, I could really tell you anything I wanted about June Divided. I could tell you that we’re a rock band from Philadelphia. And that we dig bands like Jimmy Eat World and Thrice. And that we started in late 2010. But this is boring me already so let’s do something fun... like, 2 Truths and A Lie- I like that game. Guess which sentence is a lie about our band. Ok ready here we go:

a.) Chris’ distant relative is Chuck Norris.
b.) We found our drummer on Craigslist.
c.) Keith put a live frog in his mouth.

If you think that A is a lie, you win! (Which means B and C are true stories- think about that for a second….)

Unfortunately, Chris is in no way related to Chuck Norris. But I will tell you something (slightly less exciting), but true about Chris: I met him in college, and we wrote music together. We never had the “rock band dream”- in fact, we were nerdy music tech kids. After graduation we kept writing to stay happy and sane during the post-college job hunt. At some point a friend joked that we should try to find a drummer on…

Craigslist. Yes, like I said, we found Keith on Craigslist. On a whim, we put an ad out. And like a stray puppy or something, there he was. Needless to say, we all clicked. (Honestly, who wouldn’t make friends with the guy putting frogs in his mouth?) And the great thing about Keith was that he wasn’t dying to be a rock star either. He was looking to make music, just like us.

So we did. And our first EP, The Other Side of You, is what we came up with. Lucky for us, our pal Alec Henninger, (Soundmine Studios), produced and recorded it, and so by the beginning of 2011 we released it. Just like that.

To our surprise, people listened (thank you!!). So we got a move on- we played SXSW, Warped Tour, NBC, mtvU, and we were finalists in the 2011 Ernie Ball Battle of the Bands... now we just can't stop.

So here we are. This music has become our career, and it’s amazing that something so small could grow so fast. The “rock band dream” was never really our thing until we realized how much love and support we have from our fans, friends, and family. Now it’s a reality, and we wouldn’t change it for the world. So thank you for being here, and thank you for listening.

Let’s play 2 Truths and A Lie again. Guess which 2 sentences are TRUE:

a.) Chris’ distant relative is John Travolta.
b.) We love you.
c.) WE’RE MAKING OUR FIRST FULL-LENGTH ALBUM- NOW!!!!
EOD

junedivided = Act.create({:name => 'June Divided', :description => junedivided_description, :hometown => 'Philadelphia, PA'})
junedivided.logo = File.open("public/uploads/act/"+ junedivided.name.parameterize + "-logo.png")
junedivided.links.build({:weblocation => www, :url => 'http://www.junedivided.com'})
junedivided.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/JuneDivided'})
junedivided.links.build({:weblocation => twit, :url => 'http://www.twitter.com/junedivided'})
junedivided.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/junedivided'})
junedivided.links.build({:weblocation => itunes, :url => 'http://itunes.apple.com/us/artist/june-divided/id419721823'})
junedivided.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/user/JuneDivided'})
junedivided.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/junedivided'})
junedivided.links.build({:weblocation => lastfm, :url => 'http://www.last.fm/music/June+Divided'})
junedivided.save!


# *** Justin Kalk Orchestra ***
justinkalk_description = <<EOD
With his Nashville based Orchestra, Justin Kalk pens and performs a fresh brand of Rock & Roll, Hip Hop, Bluegrass and Jazz influenced Pop sounds. The songs are monster packed with catchy vocals, Olympic solos, swampy organ and a radical evolution of bass and beat madness.
EOD

justinkalk = Act.create({:name => 'Justin Kalk Orchestra', :description => justinkalk_description, :hometown => 'Nashville, TN'})
justinkalk.logo = File.open("public/uploads/act/"+ justinkalk.name.parameterize + "-logo.png")
justinkalk.links.build({:weblocation => www, :url => 'http://www.justinkalk.com/Justin_Kalk_Orchestra/Home.html'})
justinkalk.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/justinkalkorchestra'})
justinkalk.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/justinkalkorchestra'})
justinkalk.links.build({:weblocation => itunes, :url => 'http://itunes.apple.com/us/album/blue-sky-traffic/id350696178'})
justinkalk.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/justinkalkorchestra'})
justinkalk.save!


# *** Kassini ***
kassini_description = <<EOD
Kassini is an original music production and songwriting collective founded by NYC-based composer and producer Shane Koss and London-based musician and singer/songwriter John Hogg (Moke, The Black Crowes, Hookah Brown). Musical worlds collide in this creative dynamic – Koss is a classically trained, orchestral score composer and Hogg, a psychedelic blues-rock singer and guitarist – and the result is a best-of-both-worlds synthesis of ambient electronic production with live instrumentation. Taking this concoction, following its ebb and flow and driving it forward is handled by the able hands and feet of Hari Ganglberger (Kapt10Kurt).

A mixture of pure rock riffs, moody sound design-heavy textures, organic and electronic melodies and driving rhythms support Hogg’s unique world class voice and results in an all new experience that openly and deliberately nods to the influences of decades past.

Their latest full length release, Immune, is a concept album with each track weaving into the next. With an unrestricted palette, Kassini draws on a wide range of influences to paint an impressionistic canvas of the world as they see it. A melancholic journey towards a uncertain destination of optimism is a reflection of the disparity between what is versus what should be; it is an epic journey of atmospheres, textures, voice, string and sound design that leaves the listener in a much difference milieu from where they started.

The first two weeks of April will find Kassini touring the east coast of the United States – from New York to Nashville.
EOD

kassini = Act.create({:name => 'Kassini', :description => kassini_description, :hometown => 'UK/NY'})
kassini.logo = File.open("public/uploads/act/"+ kassini.name.parameterize + "-logo.png")
kassini.links.build({:weblocation => www, :url => 'http://www.kassinimusic.com/'})
kassini.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/pages/Kassini/115934971787715'})
kassini.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/kassinimusic'})
kassini.links.build({:weblocation => itunes, :url => 'http://itunes.apple.com/us/artist/kassini/id392072080'})
kassini.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/kassinimusic'})
kassini.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/kassini'})
kassini.links.build({:weblocation => sonicbids, :url => 'http://www.sonicbids.com/2/EPK/?epk_id=280129'})
kassini.save!


# *** Kingsfoil ***
kingsfoil_description = <<EOD
A Pennsylvania based rock quartet with a focus on songwriting, arrangements, and energetic live performances.

Kingsfoil was originally formed as an acoustic duo. Songwriting by Jordan Davis and Tristan Martin has matured over the years through their three independent releases (Thoughts on the Floor ’02, Blueprints ’04, and The Almond Tree EP ’05). Following the strong release of the Almond Tree EP, Joe Cipollini was added on drums, and in 2007 Tim Warren finalized the group on bass. With this solid line-up, Kingfoil recorded the five song Bear in the Attic release in 2007.

As a four piece, Kingsfoil has seen extensive growth in the south central and eastern PA markets. Drawing on influences like Coldplay, Ben Folds, Love Drug, and Radiohead, their songwriting has reached new heights. Kingsfoil continues to perform on a regional level adding fans and friends on a consistent basis. Collectively, Jordan, Tristan, Joe, and Tim are passionate about three things: burritos, bonfires, and perfecting their craft.
EOD

kingsfoil = Act.create({:name => 'Kingsfoil', :description => kingsfoil_description, :hometown => 'York, PA'})
kingsfoil.logo = File.open("public/uploads/act/"+ kingsfoil.name.parameterize + "-logo.png")
kingsfoil.links.build({:weblocation => www, :url => 'http://kingsfoil.com/'})
kingsfoil.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/kingsfoil'})
kingsfoil.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/kingsfoil'})
kingsfoil.save!


# *** Last Flight Out ***
lastflightout_description = <<EOD

EOD

lastflightout = Act.create({:name => 'Last Flight Out', :description => lastflightout_description, :hometown => 'Philadelphia, PA'})
lastflightout.logo = File.open("public/uploads/act/"+ lastflightout.name.parameterize + "-logo.png")
lastflightout.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/lastflightout'})
lastflightout.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/lastflightoutmusic'})
lastflightout.save!


# *** Lizbeth Rose ***
lizbethrose_description = <<EOD
Lizbeth Rose is a fresh new singer/songwriter from the suburbs of Philadelphia. In May of 2011 Lizbeth released her first EP under the production of Patrick Mencel, her brother and lead singer of Find Vienna. Pulling influences from Adele, Katy Perry, and Sara Bareilles, Lizbeth writes irresistible pop songs about heartbreak, chances taken, and lessons learned Upon the release of her first EP, Lizbeth is already gaining the attention of top industry execs and has been performing frequently in the cities of New York and Philadelphia. Lizbeth is definitely a young artist to keep your eyes on, you will soon be singing along to her on the radio.
EOD

lizbethrose = Act.create({:name => 'Lizbeth Rose', :description => lizbethrose_description, :hometown => 'Philadelphia, PA'})
lizbethrose.logo = File.open("public/uploads/act/"+ lizbethrose.name.parameterize + "-logo.png")
lizbethrose.links.build({:weblocation => www, :url => 'http://lizbethrosemusic.tumblr.com/'})
lizbethrose.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/LizbethRoseMusic'})
lizbethrose.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/LizBeth_Rosee'})
lizbethrose.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/lizbethrosemusic'})
lizbethrose.links.build({:weblocation => itunes, :url => 'http://itunes.apple.com/us/album/overdue/id443166698?i=443166704'})
lizbethrose.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/lizbethrose'})
lizbethrose.save!


# *** Lovebettie ***
lovebettie_description = <<EOD
Do you Lovebettie?

Named “Pittsburgh’s Hottest Band” by Microsoft Windows, the Pittsburgh based pioneers of “Swagger Rock” attract fans from all walks of life with their neo-soul, rock-pop mash up. This genre-bending refreshing new take on modern rock has landed the band an onslaught of mass media exposure, major radio circulation, and a resounding buzz within the music industry.

Having toured a majority of East coast and Midwest states, Lovebettie’s persistent drive and tireless work ethic has helped them evolve from a local favorite to a national success story. They have shared the stage with multitudes of national acts including: Lifehouse, Fuel, Semi Precious Weapons, Everclear, Guster, The Last Goodnight, and many more. In 2010 they performed The Official Lady Gaga Afterparty for her Monsters Ball Tour. They were personally selected by Jon Bon Jovi as one of three bands to contend for a tour opening spot, and released two music videos for airing consideration on MTV, VH1, and Fuse.

In 2011, Lovebettie released their new EP, engineered, produced, and mixed by notorious producer Jim Wirt (Incubus, Fiona Apple, Hoobastank) and performed a 24 day headlining US tour from Boston to Austin.  They performed 7 showcases during the esteemed annual South by Southwest festival, and already have 3 US tours scheduled for 2012.
EOD

lovebettie = Act.create({:name => 'Lovebettie', :description => lovebettie_description, :hometown => 'Pittsburgh, PA'})
lovebettie.logo = File.open("public/uploads/act/"+ lovebettie.name.parameterize + "-logo.png")
lovebettie.links.build({:weblocation => www, :url => 'http://www.lovebettie.com/'})
lovebettie.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/lovebettie'})
lovebettie.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/lovebettie'})
lovebettie.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/lovebettie'})
lovebettie.links.build({:weblocation => itunes, :url => 'http://itunes.apple.com/us/artist/lovebettie/id308527839'})
lovebettie.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/lovebettie'})
lovebettie.save!


# *** Minshara ***
minshara_description = <<EOD
In the first decade of the millennium there has been a rollercoaster of genres throughout pop music. What we once knew as Rock n’ Roll has now been thrown into a whole new world of electronic dance music. You may be asking at this point, where does Minshara fit into all of this? Call them a lot of things except “more of the same.” From an uplifting “Pet Sounds-esque” ballad to a massive club banger, it is really hard to describe their sound with only a few words. Dubstep to Prog Rock, Incubus to The Beatles, their music is composed without bias. When someone asks you to describe what you hear, just call it, Minshara.
EOD

minshara = Act.create({:name => 'Minshara', :description => minshara_description, :hometown => 'Philadelphia, PA'})
minshara.logo = File.open("public/uploads/act/"+ minshara.name.parameterize + "-logo.png")
minshara.links.build({:weblocation => www, :url => 'http://rockpaperrecords.com/artists/minshara/'})
minshara.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/Minshara'})
minshara.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/minsharamusic'})
minshara.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/minsharamusic'})
minshara.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/minshara'})
minshara.links.build({:weblocation => bandcamp, :url => 'http://minshara.bandcamp.com/'})
minshara.save!


# *** Morning Fuzz ***
morningfuzz_description = <<EOD
Morning Fuzz is a Brooklyn-based melodic pop-rock outfit respectfully exploiting the talents of master wordsmith and guitarist, Frank Fussa, and his dexterous counterpart, bassist Christopher Johanidesz. The musically inclined duo are close friends from childhood, having together traversed through their adolescent years on skateboards around their Long Island, NY neighborhood, listening to punk rock and surfing the grungy, alternative wave of the 90’s. They decided to give their musical interests and talents a creative outlet and started their first band, Ultra High Frequency. UHF in their heyday extensively toured the East Coast and launched a successfully cross-country tour that landed them in sunny Los Angeles, CA, where they set up a yearlong residency.

Following their artist journey westward, the two (of four) returned to their New York roots in early 2008 to hone in on the sounds of their driving, catchy dance-evoking rock. As seasoned recording and performance artists, Fussa and Johanidesz wasted no time in starting their next musical project together – and here you have it folks, Morning Fuzz.

A fresh take on garage pop indie rock, Morning Fuzz is a perfect soundtrack to life’s bumpy ride. Fussa’s dynamic and layered singer-songwriter approach channels the song craftsmanship of Brian Wilson and Paul McCartney alike, drawing from personal experiences and creatively culling his colorful imagination. The imagery conjured from his lyrics well complement the pleasant arrangements of each instrument and voice involved.

Fussa’s incredible vocal range and rockin’ guitar playing, paired with Johanidesz’s no-holds barred bass lines are best showcased in their latest EP, Shadows in the Rearview. Drummer Marco Sulis, rounds out the power trio by mercilessly pounding the rhythmic backbones of the band’s most accomplished songs to date.  With a new addition beefing up their live show, childhood friend Michael Seymour stepped in to add a new wing of dual guitars with a hint of keys.  The lyrics are worth quoting, the melodies deserve to be hummed aloud, and the beats ought to be tapped out with fervor. We hear the air drums are looking to make their comeback any day now.

Rock out with Morning Fuzz – coming soon to a show near you. Dance pants optional, but highly encouraged.
EOD

morningfuzz = Act.create({:name => 'Morning Fuzz', :description => morningfuzz_description, :hometown => 'Brooklyn NY'})
morningfuzz.logo = File.open("public/uploads/act/"+ morningfuzz.name.parameterize + "-logo.png")
morningfuzz.links.build({:weblocation => www, :url => 'http://morningfuzz.com/'})
morningfuzz.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/Morningfuzzrock'})
morningfuzz.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/morning_fuzz'})
morningfuzz.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/morningfuzz'})
morningfuzz.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/morningfuzz'})
morningfuzz.links.build({:weblocation => bandcamp, :url => 'http://morningfuzz.bandcamp.com/'})
morningfuzz.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/morningfuzz'})
morningfuzz.links.build({:weblocation => bigcartel, :url => 'http://morningfuzz.bigcartel.com/'})
morningfuzz.links.build({:weblocation => sonicbids, :url => 'http://www.sonicbids.com/2/EPK/?epk_id=241458'})
morningfuzz.save!


# *** Rod Kim ***
rodkim_description = <<EOD
It’s all about you now. All about who? We may never know. Though Rod’s previous project, “A Fortunate Consequence“, was about the one that got away and before that, the songs on “Live From LaDue Auditorium” were results of his college experiences, he has yet to give any hints as to what the songs on his latest release “All About You” were inspired by. They could be about almost anything this time around. Within the last year, Rod quit his day job, left his home, moved into his car and set out on a 365 day tour across the US playing gigs, collaborating with songwriters of every genre, finding his muse and relying on music to provide. It has been a good year. So far, Rod has played hundreds of shows of every size and circumstance, made TV and radio appearances, interviewed with dozens of newspapers and magazines, driven nearly 20,000 miles across the US, had his recent single “Tomorrow She’s Mine” become a playable song on the hit XBox 360 video game “Rock Band“, was commissioned to write a book, had all of his recent singles added to radio playlists across the country and released his latest project produced by Ritchie Rubini (MTV “The Hills, Fox “So You Think You Can Dance,” MTV “True Life,” MTV “Parental Control,” Pearl Jam, Sting, Bruce Springsteen) entitled “All About You” available exclusively in Best Buy stores nationwide.
EOD

rodkim = Act.create({:name => 'Rod Kim', :description => rodkim_description, :hometown => 'DE'})
rodkim.logo = File.open("public/uploads/act/"+ rodkim.name.parameterize + "-logo.png")
rodkim.links.build({:weblocation => www, :url => 'http://www.rodkimrocks.com/'})
rodkim.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/RodKim'})
rodkim.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/rodkim'})
rodkim.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/rodkimrocks'})
rodkim.links.build({:weblocation => itunes, :url => 'http://itunes.apple.com/us/album/all-about-you/id385331668'})
rodkim.save!


# *** Rory Sullivan ***
rorysullivan_description = <<EOD
Rory Sullivan is an award winning singer/songwriter, who has won the acclaim of legendary producers and artists alike. Having recorded his debut EP with Grammy-winner and Windham Hill records founder Will Ackerman in 2009, the Delaware-bred musician has spent the last few years touring the east coast and staking out a prominent spot in today’s folk/pop scene. As Ackerman has said, “With brilliant songwriting, the guitar skills of a soloist, and a voice as big as a house, Rory is one of the most impressive young singer/songwriters I’ve heard in a long time.”

Growing up with small-town roots, somewhere between big city living and backcountry roads, it’s no wonder Rory developed a unique mix of musical taste. His blending of sounds, ranging from the versatile guitar and songwriting of James Taylor, husky voice of Marc Cohn, and contemporary pop sensibilities of John Mayer, allows Rory to create music worthy of the icons that proceeded him. Without limiting himself to one traditional sound or genre, Rory merges folk, pop, soul and a subtle country flair into a sound uniquely his own.

After relocating to New York last spring, Rory enlisted the talents of former Epic Records Artist and Producer Justin King to record his first full-length record at Vinegar Hill Sound. Taking a big detour from the solo route by teaming up with his newly dubbed NYC backing band, The Second Season, “Rory’s music has never sounded fuller and more alive” says King. Consisting of the talents of New Hampshire native’s and Berklee Music grads drummer Matt Musty and bassist Ryan Gleason, the boys create an organic blend of authentic rhythm and song.

Since their inception, Rory and the Second Season have been hitting the pavement hard, playing shows all over the East Coast while simultaneously raising a generous amount of album funding via their Kickstarter campaign. With the support of their amazing fans, 2011 was a tremendous year of growth and transformation, promising a bright future ahead in 2012. “We can’t wait to get this new album out into the world, and believe it to be a great centerpiece for the coming year”, say the boys. With the new self-titled album, Rory and the Second Season are not to be missed!
EOD

rorysullivan = Act.create({:name => 'Rory Sullivan', :description => rorysullivan_description, :hometown => 'New York, NY'})
rorysullivan.logo = File.open("public/uploads/act/"+ rorysullivan.name.parameterize + "-logo.png")
rorysullivan.links.build({:weblocation => www, :url => 'http://rorysullivanmusic.com/'})
rorysullivan.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/rorysullivansmusic'})
rorysullivan.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/rorysullivanmusic'})
rorysullivan.save!


# *** Sinclarity ***
sinclarity_description = <<EOD
It’s often been said that being in a band is like being in a marriage, and the Pennsylvania/Virginia-based alt-rock band Sinclarity is the proverbial match made in heaven.

Within a few short months since finalizing its lineup, Sinclarity had already completed an album - a modern-day classic, eight songs of pure emotive force with immediacy and honesty - and gone from testing its live show to opening for national acts.

The roots of Sinclarity go back to Holmes’ and Besecker’s former band, The Underwater, which Holmes' formed in 2001 right out of high school. The band went on to release an EP for trendsetting indies Tribunal Records and Lifeforce Records, Release an album on the legendary Megaforce Records, record with famed producer David Bendeth and tour the world with some of the biggest bands. Their dreams were all coming true. However, all of the momentum – all that they knew, really – came crashing around them when the band’s lead singer decided to leave the band, leaving Holmes and Besecker with what appeared to be nothing but broken dreams. It was at this point when things seemed the darkest that Holmes made the decision to simply sit down and write some songs. Unsurprisingly, it all started with those seemingly unfinished dreams.

“I was coming off the tail end of this thing that was my career, my business, my passion, my whole world that I built my life around, but I had to move on,” Holmes recalls. “The song ‘Forgive Dreams,’ as a title and idea, came out before I really even had lyrics. It was just the concept of having all the dreams that you've built your life around may not turn out how you wanted but you have to forgive yourself and move on in order to move forward. I really love that song, looking back on everything that inspired it.”

Holmes’ prolific songwriting led him out to L.A., where he began writing with fellow musicians and nationally-known acts. It was there that Holmes began to find his voice. Once back on the East Coast, he and Besecker were introduced to Charlottesville, VA based guitarist, Will Nealy and reconnected with an old PA friend in Geoff Black. Shortly after, the foursome got to work. Working off of an already plentiful catalog of music, the newly-fleshed-out lineup began personalizing the already-written songs, as well as crafting a brand new collection of tunes.

In addition to completing an album, Sinclarity had the opportunity to work with award-winning filmmaker Dave Rodriguez. After including several of Sinclarity's tracks in his feature film "American Bully", Rodriguez offered to do a video for the track “Wake Up.” Filmed on a rooftop in Brooklyn, the video captures the live intensity of Sinclarity with a stunning view of the New York skyline as a backdrop. With a finished video and album in hand, 2011 looks to be the start of a new dream for Sinclarity.
EOD

sinclarity = Act.create({:name => 'Sinclarity', :description => sinclarity_description, :hometown => 'York, PA'})
sinclarity.logo = File.open("public/uploads/act/"+ sinclarity.name.parameterize + "-logo.png")
sinclarity.links.build({:weblocation => www, :url => 'http://www.sinclarity.com/'})
sinclarity.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/Sinclaritymusic'})
sinclarity.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/sinclaritymusic'})
sinclarity.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/sinclaritymusic'})
sinclarity.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/sinclarity'})
sinclarity.save!


# *** Soraia ***
soraia_description = <<EOD
Heart, Soul, and Rock ‘n’ Roll are the rare, potent blend - the perfect storm of passion that fuels Philadelphia-born, SORAIA. Infusing their hard-hitting, no frills rock ‘n’ roll with soulful influences drawn from their muses, SORAIA creates songs immediately reminiscent of tunes you’ve been humming your entire life. Simply put,  their songs make you wanna get up and dance. Listening to SORAIA is coming back home to the open arms of authentic, real rock ‘n’ roll.

At the helm of this band is the force of nature that is alpha frontwoman Zou Mansour. Channeling her inner demons and gutwrenching passion, Mansour’s naked with emotion vocals touch the most passive of listeners to their very core.

In the studio and on stage, each band member leaves his distinctive fingerprint on the music; but whether it’s her honey-whiskey voice enveloping you in a warm embrace or her primal ferocity displayed during a live performance, it’s Mansour’s unyielding intensity and soul-searching lyrics which set SORAIA apart from the wannabes chasing the fame bandwagon.

Smart and funny, confident and brazen, wounded and resolved, tender and tough, leather and lace, one of the boys yet a girl’s girl, everyone wants a piece of Zou. Nowhere is the true ZouZou Mansour more visible than on stage during one of SORAIA’s ferociously energetic, intoxicating live shows. Whether in a hot, sweaty rock club or a massive amphitheatre, her charisma and spirit transcends the concert stage and reaches all those who witness SORAIA live.

SORAIA is the real deal, focused on songwriting, sacrifice...sweat. SORAIA is about the music and the sweet release it brings when you give yourself over and lose yourself to it. Mansour’s primal vocals and seductive presence onstage is hypnotic. Together with the band, SORAIA live is a loud, raunchy, dirty eruption of flesh and sound: all the allure and danger rock ‘n’ roll promised to be.

The band has traversed the United States since 2007, playing clubs and festivals, improving their live performances and building their fan base. Making a life in rock ‘n’ roll these days ain’t easy. None of the old rules apply, except one. Success is built the hard way: through work, focus and passion.

SORAIA is the presence of rock ‘n’ roll and the future of rock ‘n’ roll.
EOD

soraia = Act.create({:name => 'Soraia', :description => soraia_description, :hometown => 'Philadelphia, PA'})
soraia.logo = File.open("public/uploads/act/"+ soraia.name.parameterize + "-logo.png")
soraia.links.build({:weblocation => www, :url => 'http://www.soraia.com/'})
soraia.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/Soraia.music'})
soraia.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/SoraiaRocks'})
soraia.links.build({:weblocation => itunes, :url => 'http://itunes.apple.com/us/artist/soraia/id97591132'})
soraia.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/user/Soraia23'})
soraia.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/soraia'})
soraia.links.build({:weblocation => sonicbids, :url => 'http://www.sonicbids.com/2/EPK/?epk_id=81658'})
soraia.save!


# *** The Violet Tone ***
violettone_description = <<EOD
The Violet Tone (2010) is an alternative rock band based out of Philadelphia, PA with loud guitars, big drums, and memorable choruses. They recently completed recording their debut EP, Neon Kings & Violet Queens, in Los Angeles, California with Grammy-Nominated Producer/Engineer Luke Tozour (Pink, Katy Perry, Mika, Jamie Cullum). Neon Kings & Violet Queens is currently available at all major online retailers (iTunes, Amazon, Spotify, etc.). The band is planning regional gigs and college shows for the fall.
EOD

violettone = Act.create({:name => 'The Violet Tone', :description => violettone_description, :hometown => 'Philadelphia, PA'})
violettone.logo = File.open("public/uploads/act/"+ violettone.name.parameterize + "-logo.png")
violettone.links.build({:weblocation => www, :url => 'http://www.theviolettone.com/'})
violettone.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/theviolettone'})
violettone.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/theviolettone'})
violettone.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/theviolettone/music'})
violettone.links.build({:weblocation => itunes, :url => 'http://itunes.apple.com/us/artist/the-violet-tone/id442964651'})
violettone.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/theviolettone'})
violettone.links.build({:weblocation => reverb, :url => 'http://www.reverbnation.com/theviolettone'})
violettone.save!


# *** Underground All Stars ***
undergroundallstars_description = <<EOD
A songwriting project that explodes…

In the fast paced world of popular music, bands come and go at a breakneck pace.

Often they struggle for years to find their sound and learn how to be creative as a group. Usually they find their focus just as the genre they were born from begins to fall out of favor with the public, making them look like they jumped on the band wagon a little too late to make a fresh impression on the media and the pop culture which it speaks to.

Such is the fickle landscape of chasing..."The next big thing." Underground All Stars is a band that had to be. The story is unique and unconventional as the individual band members themselves.

In the fall of 2009 Jimmy Farrell contacted Andy Waldeck to begin a songwriting collaboration. These 2 veteran modern rockers had known each other in the past.

Waldeck's group, Earth to Andy and Farrell's band, No Soap Radio had crossed paths while touring in support of their respective major label debuts.

A mutual respect developed, which brought these two songwriters together for this new collaboration. As the first few songs came together it was clear that something very special was happening. A perfect blend of modern rock and pop fusing together in undeniably hook laden songs. Underground All Stars was born. For over a year the songwriting progressed and more new musical gems uncovered. It was time to head into the studio & record their debut cd, titled, "People Are Stars".

Every song on 'People Are Stars' is an experience in life that the listener can relate to in their own way. The undeniable vocals by Andy Waldeck are backed up by the rich, dark & rhythmic textures by guitarist Jimmy Farrell. Bassist Crix Reardon supplies the rumble in your gut along with the vocal harmonies that deliver a polished, yet indie sound. Guitarist Mike Maino captures the attention of the audience with melodic & emotional leads that are far to often missing in songs these days. And when it comes to getting pulled in by the heartbeat of the band, drummer Chris ""Cujo"" O'Hara delivers.

"This is going to be a great year for Underground All Stars" says guitarist Jimmy Farrell. "We've done lots of great things on our own. I can't wait to see what we do together!". With gold records, major television and film placements and A-list studio sessions to their credit, it's easy to understand his excitement.
EOD

undergroundallstars = Act.create({:name => 'Underground All Stars', :description => undergroundallstars_description, :hometown => 'Charlottesville, VA'})
undergroundallstars.logo = File.open("public/uploads/act/"+ undergroundallstars.name.parameterize + "-logo.png")
undergroundallstars.links.build({:weblocation => www, :url => 'http://www.undergroundallstars.com/'})
undergroundallstars.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/UndergroundAllStars'})
undergroundallstars.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/uas_official'})
undergroundallstars.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/undergroundallstarsnj'})
undergroundallstars.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/user/undergroundallstars5'})
undergroundallstars.save!


# *** We Stole the Kids ***
westolethekids_description = <<EOD
We are We Stole The Kids!

Music took us, now we're taking you. Let's get it.
EOD

westolethekids = Act.create({:name => 'We Stole the Kids', :description => westolethekids_description, :hometown => 'New York, NY'})
westolethekids.logo = File.open("public/uploads/act/"+ westolethekids.name.parameterize + "-logo.png")
westolethekids.links.build({:weblocation => www, :url => 'http://www.westolethekids.com/'})
westolethekids.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/WeStoleTheKids'})
westolethekids.links.build({:weblocation => twit, :url => 'https://twitter.com/#!/WeStoleTheKIds'})
westolethekids.links.build({:weblocation => youtube, :url => 'http://www.youtube.com/WeStoleTheKIds'})
westolethekids.links.build({:weblocation => tumblr, :url => 'http://WeStoleTheKIds.tumblr.com'})
westolethekids.save!


# *** Laura Lea and Trip Fabulous ***
lauralea_description = <<EOD
Tripp Fabulous is a female fronted Cover/Original band with an excellent range of various influences from Alice in Chains to Tool to Pat Benetar to Journey and whose Song Selection proves to be of the widest variety. An eclectic mix of unmatched musicians working together to master and create bomb tunes to dance, sing along or just rock out to, Tripp Fabulous is all the party you can handle!
EOD

lauralea = Act.create({:name => 'Laura Lea and Trip Fabulous', :description => lauralea_description, :hometown => 'Philadelphia, PA'})
lauralea.logo = File.open("public/uploads/act/"+ lauralea.name.parameterize + "-logo.png")
lauralea.links.build({:weblocation => www, :url => 'http://www.trippfabulous.com/'})
lauralea.links.build({:weblocation => facebook, :url => 'https://www.facebook.com/trippfabulous'})
lauralea.links.build({:weblocation => myspace, :url => 'http://www.myspace.com/trippfabulous'})
lauralea.save!




# ***Events***

# *** Popfest ***
popfest = Event.create({:name => 'Popfest', :description => 'Power Pop, Britpop, and Pop Punk Bands on 4 Stages. No cover.'})
popfest.logo = File.open("public/uploads/event/"+ popfest.name.parameterize + "-logo.png")
popfest.links.build({:weblocation => www, :url => 'http://www.deweybeachfest.com/popfest/'})
popfest.links.build({:weblocation => facebook, :url => 'http://www.facebook.com/pages/Dewey-Beach-Popfest/174417692588388'})
popfest.save!




# ***Festivals***

# *** Dewey Beach Music Conference ***
DBMC = Festival.create({:name => 'Dewey Beach Music Conference', :description => 'Power Pop, Britpop, and Pop Punk Bands on 4 Stages. No cover.'})
DBMC.save!



# ***Parents***

# Popfest Day 1 Stage A
popfest1a = popfest.schedules.build({:location => ruddera, :start => '2012-04-13T20:00:00-04:00', :end => '2012-04-14T01:00:00-04:00'})
popfest1a.save!

# Popfest Day 1 Stage B
popfest1b = popfest.schedules.build({:location => rudderb, :start => '2012-04-13T20:00:00-04:00', :end => '2012-04-14T01:00:00-04:00'})
popfest1b.save!

# Popfest Day 1 Stage C
popfest1c = popfest.schedules.build({:location => rudderc, :start => '2012-04-13T20:00:00-04:00', :end => '2012-04-14T01:00:00-04:00'})
popfest1c.save!

# Popfest Day 1 Stage D
popfest1d = popfest.schedules.build({:location => rudderd, :start => '2012-04-13T20:00:00-04:00', :end => '2012-04-14T01:00:00-04:00'})
popfest1d.save!

# Popfest Day 2 Stage A
popfest2a = popfest.schedules.build({:location => ruddera, :start => '2012-04-14T20:00:00-04:00', :end => '2012-04-15T01:00:00-04:00'})
popfest2a.save!

# Popfest Day 2 Stage B
popfest2b = popfest.schedules.build({:location => rudderb, :start => '2012-04-14T20:00:00-04:00', :end => '2012-04-15T01:00:00-04:00'})
popfest2b.save!

# Popfest Day 2 Stage C
popfest2c = popfest.schedules.build({:location => rudderc, :start => '2012-04-14T20:00:00-04:00', :end => '2012-04-15T01:00:00-04:00'})
popfest2c.save!

# Popfest Day 2 Stage D
popfest2d = popfest.schedules.build({:location => rudderd, :start => '2012-04-14T20:00:00-04:00', :end => '2012-04-15T01:00:00-04:00'})
popfest2d.save!

# Laura Lea and Trip Fabulous Concert
lauralea1 = lauralea.schedules.build({:location => sb1, :start => '2012-04-14T22:00:00-04:00', :end => '2012-04-15T01:00:00-04:00'})
lauralea1.details.build({:name => "Breast-fest", :description => 'a celebration of boobies!'})
lauralea1.save!




# ***Children***

# Popfest Day 1 Stage A
minshara.schedules.build({:location => ruddera, :start => '2012-04-13T21:40:00-04:00', :parent => popfest1a }).save!
westolethekids.schedules.build({:location => ruddera, :start => '2012-04-13T23:00:00-04:00', :parent => popfest1a }).save!
kassini.schedules.build({:location => ruddera, :start => '2012-04-14T00:20:00-04:00', :parent => popfest1a }).save!

# Popfest Day 1 Stage B
violettone.schedules.build({:location => rudderb, :start => '2012-04-13T21:00:00-04:00', :parent => popfest1b }).save!
lovebettie.schedules.build({:location => rudderb, :start => '2012-04-13T22:20:00-04:00', :parent => popfest1b }).save!
kingsfoil.schedules.build({:location => rudderb, :start => '2012-04-13T23:40:00-04:00', :parent => popfest1b }).save!

# Popfest Day 1 Stage C
jonsandler.schedules.build({:location => rudderc, :start => '2012-04-13T21:00:00-04:00', :parent => popfest1c }).save!
justinkalk.schedules.build({:location => rudderc, :start => '2012-04-13T22:20:00-04:00', :parent => popfest1c }).save!
undergroundallstars.schedules.build({:location => rudderc, :start => '2012-04-13T23:40:00-04:00', :parent => popfest1c }).save!

# Popfest Day 1 Stage D
lizbethrose.schedules.build({:location => rudderd, :start => '2012-04-13T20:20:00-04:00', :parent => popfest1d }).save!
rorysullivan.schedules.build({:location => rudderd, :start => '2012-04-13T21:40:00-04:00', :parent => popfest1d }).save!
sinclarity.schedules.build({:location => rudderd, :start => '2012-04-13T23:00:00-04:00', :parent => popfest1d }).save!
morningfuzz.schedules.build({:location => rudderd, :start => '2012-04-14T00:20:00-04:00', :parent => popfest1d }).save!

# Popfest Day 2 Stage A
rodkim.schedules.build({:location => ruddera, :start => '2012-04-14T20:20:00-04:00', :parent => popfest2a }).save!
lastflightout.schedules.build({:location => ruddera, :start => '2012-04-14T21:40:00-04:00', :parent => popfest2a }).save!
duckyduke.schedules.build({:location => ruddera, :start => '2012-04-14T23:00:00-04:00', :parent => popfest2a }).save!
soraia.schedules.build({:location => ruddera, :start => '2012-04-15T00:20:00-04:00', :parent => popfest2a }).save!

# Popfest Day 2 Stage B
chipgreene.schedules.build({:location => rudderb, :start => '2012-04-14T21:00:00-04:00', :parent => popfest2b }).save!
darrymiller.schedules.build({:location => rudderb, :start => '2012-04-14T22:20:00-04:00', :parent => popfest2b }).save!
darlingparade.schedules.build({:location => rudderb, :start => '2012-04-14T23:40:00-04:00', :parent => popfest2b }).save!

# Popfest Day 2 Stage C
jayloftus.schedules.build({:location => rudderc, :start => '2012-04-14T21:00:00-04:00', :parent => popfest2c }).save!
colourslide.schedules.build({:location => rudderc, :start => '2012-04-14T22:20:00-04:00', :parent => popfest2c }).save!
findvienna.schedules.build({:location => rudderc, :start => '2012-04-14T23:40:00-04:00', :parent => popfest2c }).save!

# Popfest Day 2 Stage D
junedivided.schedules.build({:location => rudderd, :start => '2012-04-14T21:40:00-04:00', :parent => popfest2d }).save!
lovebettie.schedules.build({:location => rudderd, :start => '2012-04-14T23:00:00-04:00', :parent => popfest2d }).save!
justinkalk.schedules.build({:location => rudderd, :start => '2012-04-15T00:20:00-04:00', :parent => popfest2d }).save!

