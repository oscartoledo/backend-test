# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

Event.create! name: "Event 1",
             description: "Description for Event 1",
             location: "Location for Event 1",
             picture_url: "https://images.pexels.com/photos/57767/pexels-photo-57767.jpeg?dl&fit=crop&w=640&h=426",
             billboards_attributes: [
                 {show_date: DateTime.tomorrow, premier: true, sold_out: false, price: 100.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 100.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 100.00}
             ]

Event.create! name: "Event 2",
             description: "Description for Event 2",
             location: "Location for Event 2",
             picture_url: "https://images.pexels.com/photos/370470/pexels-photo-370470.jpeg?dl&fit=crop&w=640&h=426",
             featured: false,
             billboards_attributes: [
                 {show_date: DateTime.tomorrow, premier: true, sold_out: false, price: 101.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 101.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 101.00}
             ]

Event.create! name: "Event 3",
             description: "Description for Event 3",
             location: "Location for Event 3",
             picture_url: "https://images.pexels.com/photos/372173/pexels-photo-372173.jpeg?dl&fit=crop&w=640&h=426",
             featured: true,
             billboards_attributes: [
                 {show_date: DateTime.tomorrow, premier: true, sold_out: false, price: 102.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 102.00},
                 {show_date: DateTime.tomorrow, premier: false, sold_out: false, price: 102.00}
             ]

Event.create! name: "Event 4",
             description: "Description for Event 4",
             location: "Location for Event 4",
             picture_url: "https://images.pexels.com/photos/200953/pexels-photo-200953.jpeg?dl&fit=crop&w=640&h=360",
             featured: true,
             billboards_attributes: [
                 {show_date: DateTime.now + 2, premier: true, sold_out: false, price: 102.00},
                 {show_date: DateTime.now + 2, premier: false, sold_out: false, price: 102.00},
                 {show_date: DateTime.now + 2, premier: false, sold_out: false, price: 102.00}
             ]