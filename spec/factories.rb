Factory.define :act do |f|
	f.name          'Rush'
	f.description   'Only the greatest band, ever.'
end

Factory.define :event do |f|
  f.name          'Jam Session'
  f.description   'Saturday Jam with three bands'  
end

Factory.define :schedule do |f|
  
end

Factory.define :location do |f|
  f.association   :venue
  f.name          'Default'
end

Factory.define :weblocation do |f|
  f.name        'Facebook'
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