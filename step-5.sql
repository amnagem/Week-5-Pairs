/*
 STEP ONE: Add a new park with the following data:
  ------------------------------
  name: Ohiopyle State Park
  location: Pennsylvania
  establish date: 1965-01-01
  area: 19052
  visitors: 1000000
  description: Ohiopyle State Park is a Pennsylvania state park on 19,052 acres in Dunbar, Henry Clay and Stewart Townships, Fayette County, Pennsylvania in the United States. The focal point of the park is the more than 14 miles of the Youghiogheny River Gorge that passes through the park.
  ------------------------------
*/
select * from park
insert into park (name, location, establish_date, area, visitors, description) values 
('Ohiopyle State Park', 'Pennsylvania', '1965-01-01', 19052, 1000000, 'Ohiopyle State Park is a Pennsylvania state park on 19,052 acres in Dunbar, Henry Clay and Stewart Townships, Fayette County, Pennsylvania in the United States. The focal point of the park is the more than 14 miles of the Youghiogheny River Gorge that passes through the park.')


/*
  STEP TWO: You just found out that there was an error with the park data. Please update the park visitors to 1.5 million anually.

*/
update park set visitors = 1500000 where park_id = 4 


/*
 STEP THREE: Insert new campground with the following data:
  ------------------------------------------------------------
  park_id: 4 (this should be the id of the new park you just added)
  name: Youghiogheny
  open_from_mm: 01
  open_to_mm: 12
  daily_fee: 95.00
  ------------------------------------------------------------
*/
select * from campground
insert into campground (park_id, name, open_from_mm, open_to_mm, daily_fee) values (4, 'Youghiogheny', 01, 12, 95.00)


/*
 STEP FOUR: Insert 3 new sites with the following data:
 ------------------------------------------------------------
  site_number: 623, campground_id: 8
  site_number: 624, campground_id: 8
  site_number: 625, campground_id: 8
 ------------------------------------------------------------

 > campground_id 8 should be the id of the campground you just added 'Youghiogheny'

*/
select * from site
insert into site (campground_id, site_number)
values (8,623)
insert into site (campground_id, site_number)
values (8,624)
insert into site (campground_id, site_number)
values (8,625)
/*
 STEP FIVE: Insert 3 reservations, 1 for each site with the following data:
------------------------------------------------------------------------------------
  site_id: 52, name: Wayne Family, from_date: today + 10 days, to_date: today + 20 days
  site_id: 53, name: Parker Family, from_date: today + 11 days, to_date: today + 20 days
  site_id: 54, name: Kent Family, from_date: today + 12 days, to_date: today + 20 days
------------------------------------------------------------------------------------

*/
select * from reservation
insert into reservation (site_id, name, from_date, to_date)
values (52, 'Wayne Family', '2020-10-27', '2020-11-6')

insert into reservation (site_id, name, from_date, to_date)
values (53, 'Parker Family', '2020-10-28', '2020-11-7')

insert into reservation (site_id, name, from_date, to_date)
values (54, 'Kent Family', '2020-10-29', '2020-11-8')
/*
 STEP SIX: The Wayne Family called and asked if they could change their reservation to today. Update the from_date to today and the to_date to a week from today.

 */
 update reservation set from_date = '2020-10-17', to_date = '2020-10-24' where reservation_id = 45



/*
 STEP SEVEN: The Kent family called and they would like to cancel their reservation. Delete the reservation for Kent Family.

*/
select * from reservation
delete reservation where reservation_id = 48


