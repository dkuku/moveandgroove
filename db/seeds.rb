# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

user =  User.new(
  email: "daniel@wp.pl",
    name: "Daniel",
    password: "123456",
    password_confirmation: "123456"
  )
user.save!

puts "1 users created"



10.times do |activity_list|
  ActivityList.create!(
  name: "running",
  theme: "default",
  main_image: "http://via.placeholder.com/400x400",
  thumb_image: "http://via.placeholder.com/50x50"
  )
end

puts "10 activity_list created"


10.times do |activity|
  Activity.create!(
    activity_list_id: "1",
    date: "1/1/2018".to_date , 
    duration: "15", 
    kcal: "200",
    user_id: "1"
  )
end

puts "10 activities create"
