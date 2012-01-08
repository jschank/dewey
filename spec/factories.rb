Factory.define :act do |f|
	f.name          'Rush'
	f.description   'Only the greatest band, ever.'
  f.website       'http://www.rush.com'
end

Factory.define :event do |f|
  f.name          'Jam Session'
  f.description   'Saturday Jam with three bands'  
end

Factory.define :location do |f|
  f.association   :venue
  f.name          'Default'
end

Factory.define :occurrence do |f|
  f.cover_charge  9.99
  f.event_start   DateTime.civil(2011, 07, 02, 17, 0)
  f.event_end     DateTime.civil(2011, 07, 03, 01, 0)  
end

Factory.define :performance do |f|
  f.association         :act
  f.association         :occurrence
  f.association         :location
  f.performance_start   DateTime.civil(2011, 07, 02, 17, 0)
  f.performance_end     DateTime.civil(2011, 07, 03, 01, 0)
  f.priority            1  
end

Factory.define :weblocation do |f|
  f.name        'Facebook'
  f.tagline     'join us on'
  f.icon        'facebook-icon.png'
end

Factory.define :venue do |f|
  f.name        'Bottle & Cork'
  f.description 'The Bottle & Cork is a live music club established in 1936.'
  f.address1    '1807 Highway One'
  f.city        'Dewey Beach'
  f.state       'DE'
  f.zip         '19971'
  f.phone       '302-227-7272'
end