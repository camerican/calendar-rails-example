# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {name_first:'Mauricio',name_last:'Garcia',username:'mauricio',email:'mauricio@garcia.net'},
  {name_first:'Cam',name_last:'Crews',username:'camerican',email:'cam@nycda.com'}
  ])
Calendar.create([
  {user_id: 1, title: 'Mauricio\'s Calendar'},
  {user_id: 1, title: 'Mauricio\'s Secret Meetings'},
  {user_id: 2, title: 'Cam Cal'}
  ])  
Event.create([
  {calendar_id: 1, name: 'Mauricio Crushes it', start: Time.now, end: nil},
  {calendar_id: 1, name: 'Wednesday Class', start: (Time.now - 10.days), end: (Time.now - 10.days + 1.hours)}
])