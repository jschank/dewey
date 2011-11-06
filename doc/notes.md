Introduction
============

Dewey is a web app designed to show the user what events are taking place at dewey beach DE.

Objects
-------

### Venue (Where)
A venue is a location where events take place.
For example: Starboard, Bottle & Cork, the Lighthouse

**Fields**

* Icon/Image
* Name
* Address
* GPS Location (populated on backend - Use google to convert Address to GPS)
* Hours of operation?
* Link (HTML link to any website the venue may have)

#### Reasoning
> the thought is that a specific bar or location doesn't change much. We can enter a place once and then
add any number of events that reference it.

### Promotion (who/what)
a promotion is a thing that happens.
For example: Taco Toss, Drink Special, A Band... etc.

**Fields**

* Icon/Image
* Name
* Description
* Link (HTML link to any website the band, or event may have)

#### Reasoning
> the thought is that a promotion also doesn't change much. or may recur frequently. For example, a specific Band may appear in more than one bar over the summer,
or may appear at a venue more than once. Similarly, some promotions occur every weekend. The promotion itself doesn't change but the time and/or place does.

### Event/Calendar/Schedule (When)
A calendar, or schedule, relates an event to a venue, at a particular time (or series of times)
For example: (some band) at (some venue) from (some date-time) to (some date-time)

**Fields**

* Venue ID
* Event ID
* Start timestamp
* End timestamp
* All Day flag? - makes the times irrelevant
* Link (HTML link to any website that may exist for this particular occurrence)

#### Reasoning
> the thought is that an event is the binder that ties together a Promotion and a Venue, and fixes them in time. 
So an Event is a specific single occurrence of a Promotion at a Venue 

---

Pages
-----

### Main/Default
The main page is just an index of the upcoming events, you may follow links to: the venue, the promotion, or the event link (if one exists)
By default it will be the events for the next 15 days.

#### Shows:
* Events to horizon
* for each event, if user is admin, button/link to Edit the event.

#### Links
* Admin page
* Preferences page
* Find events...(near me, on date, for promotion, for venue)
* Send event to iCal

#### Defaults
* horizon of events = 15 days

The main page will eventually support preferences: for example, favorite venues, favorite promotions, how far to preview upcoming events, etc

### Preferences
We will need a page to allow a user to establish his preferences. My guess is that this information would be stored in a cookie on the browser.
we do not want to force users to login, or create accounts.

#### Shows:
* Set horizon for main page. in days

#### Links
* Main page

### Admin
We will need a page to support admin features. This page will be password protected and (should probably have its own cookie, 
so that once you have logged in as admin, the page is always available to you)
The admin page will support:

#### Shows:
* Buttons for admin tasks:
** Create Venue
** Create Promotion
** Create Event

#### Links
* Main page

Venues have locations.
Events tie a location to a Promotion and add time
Promotions have related promotions
special events are just a list of events

We need a has many thorough, and the through table has a name which is often empty

features have one promotion
feature has one venue through location

location just adds something like "indoor state A"

Special events are just tagged events
Event has a field "is special"

Features have a priority
Events have many promotions through features.

nah features have priority field
Priority is when we dont know the times






Reference Materials
===================

Here are some links, notes, tips, etc. For reference when working on the dewey app.

* [All Rails guides](http://guides.rubyonrails.org/index.html)
* [A discussion of Rails Model Associations](http://guides.rubyonrails.org/association_basics.html)

Change Log
==========
### 2011-10-30
* Broke out address on venue
* Added stage to event (for now)
* Created Special Events
* Added self join to Events (features) so an event could have related events.

To Do
=====
* Figure out why the main Dewey page with title is not showing up
	* It is working, the title is in the HEAD tag, so if you view the scaffold generated page, and then view source in your browser, you will see that the application layout is being respected
* Promotions should probably have a list of related promotions they know about (child promotions, see also)
	* now they do. Each promotion should have a list of features - which are related promotions, each promotion may reach its parent through the feature field
* Populate seeds.rb with basic data
* start over by deleting the db files, everything except seeds.rb look at foo for an example
* delete the models views and controllers
* create the new objects


