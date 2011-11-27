Introduction
============

Dewey is a web app designed to show the user what events are taking place at dewey beach DE.

Objects
-------

### Venue (Where)
A venue is a location where events take place.
For example: Starboard, Bottle & Cork, the Lighthouse

**Fields**

* Name
* Logo - some means to identify an asset
* URL
* Description
* Phone
* Address1
* Address2
* City
* State
* Zip Code

#### Todo:
* Add GPS coordinates

#### Reasoning
> the thought is that a specific bar or location doesn't change much. We can enter a place once and then
add any number of events that reference it.

#### Locations
* Name

#### Reasoning
> a location is some portion of the venue, for example, Front stage and back stage, or upstairs vs downstairs, etc. a caveat is that when creating a venue, it will need at least 1 location, which will represent the venue as a whole.

---

### Promotion (who/what)
a promotion is a thing that happens.
For example: Taco Toss, Drink Special, A Band... etc.

**Fields**

* Name
* Logo - some means to identify an asset
* Description
* URL

#### Todo:
* Add a "kind" field using [classy_enum](https://github.com/beerlington/classy_enum)
* Add "related promotions" using a [self-join association](http://edgeguides.rubyonrails.org/association_basics.html#self-joins)

#### Reasoning
> the thought is that a promotion also doesn't change much. or may recur frequently. For example, a specific Band may appear in more than one bar over the summer, or may appear at a venue more than once. Similarly, some promotions occur every weekend. The promotion itself doesn't change but the time and/or place does.

---

### Event/Calendar/Schedule (When)
A calendar, or schedule, relates an event to a venue, at a particular time (or series of times)
For example: (some band) at (some venue) from (some date-time) to (some date-time)

**Fields**

* Name
* Description
* Url
* Logo
* Event_Start
* Event_End
* Is\_All\_Day
* Is\_Special

#### Todo:
* Add "related events" using a [self-join association](http://edgeguides.rubyonrails.org/association_basics.html#self-joins)

#### Reasoning
> the thought is that an event is the binder that ties together a Promotion and a Venue, and fixes them in time. 
So an Event is a specific single occurrence of a Promotion at a Venue 

---

### Features

**Fields**

* Location_Id
* Promotion_Id
* Event_Id
* Start_Time
* End_Time

#### Todo:
* Add a priority - Priority 0 is a special case, which means we should not list the item as a separate feature but use the item as the event.

#### Reasoning
> Gimme a reason for a feature


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
	* Create Venue
	* Create Promotion
	* Create Event

#### Links
* Main page

---

Reference Materials
===================

Here are some links, notes, tips, etc. For reference when working on the dewey app.

* [All Rails guides](http://guides.rubyonrails.org/index.html)
* [A discussion of Rails Model Associations](http://guides.rubyonrails.org/association_basics.html)
* [How to setup Rails3 and RSpec2 (from scratch)](http://www.rubyinside.com/how-to-rails-3-and-rspec-2-4336.html)

---

Change Log
==========
### 2001-11-26
* updated the event index page, and it now renders properly.

### 2011-10-30
* Broke out address on venue
* Added stage to event (for now)
* Created Special Events
* Added self join to Events (features) so an event could have related events.

### 2011-11-14
* Destroyed all previous scaffolds
* Recreated models

----

To Do
=====
* Populate seeds.rb with basic data
* use classy_enum to capture kinds of promotions: drink specials, band, etc.

