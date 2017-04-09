# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

Event.create! name: "Event 1",
             description: "Description for Event 1",
             location: "Location for Event 1",
             picture_url: "http://wi.com:3000/assets/event1.jpg",
             billboards_attributes: [
                 {show_date: DateTime.tomorrow, premier: true, sold_out: false, price: 100.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 100.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 100.00}
             ]

Event.create! name: "Event 2",
             description: "Description for Event 2",
             location: "Location for Event 2",
             picture_url: "http://wi.com:3000/assets/event2.jpg",
             featured: false,
             billboards_attributes: [
                 {show_date: DateTime.tomorrow, premier: true, sold_out: false, price: 101.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 101.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 101.00}
             ]

Event.create! name: "Event 3",
             description: "Description for Event 3",
             location: "Location for Event 3",
             picture_url: "http://wi.com:3000/assets/event3.jpg",
             featured: true,
             billboards_attributes: [
                 {show_date: DateTime.tomorrow, premier: true, sold_out: false, price: 102.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 102.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 102.00}
             ]

Event.create! name: "Event 4",
             description: "Description for Event 4",
             location: "Location for Event 4",
             picture_url: "http://wi.com:3000/assets/event4.jpg",
             featured: true,
             billboards_attributes: [
                 {show_date: DateTime.now + 2, premier: true, sold_out: false, price: 102.00},
                 {show_date: DateTime.now + 2, premier: false, sold_out: false, price: 102.00},
                 {show_date: DateTime.now + 2, premier: false, sold_out: false, price: 102.00}
             ]