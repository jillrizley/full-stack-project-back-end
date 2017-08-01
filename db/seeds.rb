# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Show.create(artist: 'John Digweed', date: '2017-08-04', start_time: 10, end_time: 2, venue: 'Bijou')
Show.create(artist: 'Damien Lazarus', date: '2017-08-11', start_time: 10, end_time: 2, venue: 'Bijou')
Show.create(artist: 'Flosstradamus', date: '2017-08-12', start_time: 10, end_time: 2, venue: 'Bijou')
Show.create(artist: 'Zeds Dead', date: '2017-08-18', start_time: 6, end_time: 10, venue: 'Boat Cruise')
Show.create(artist: 'Bonobo', date: '2017-09-03', start_time: 6, end_time: 10, venue: 'Boat Cruise')
Show.create(artist: 'Chris Lake', date: '2017-09-15', start_time: 10, end_time: 2, venue: 'Bijou')
Show.create(artist: 'Thundercat', date: '2017-09-25', start_time: 7, end_time: 12, venue: 'Paradise')
Show.create(artist: 'Gorgon City', date: '2017-10-13', start_time: 9, end_time: 1, venue: 'Royale')
Show.create(artist: 'Rezz', date: '2017-10-26', start_time: 8, end_time: 1, venue: 'The Sinclair')
