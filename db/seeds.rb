# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

user =  User.new(
  email: "admin@mg.com",
  name: "User1",
  password: "123456",
  password_confirmation: "123456",
  admin: true
)
user.save!

user =  User.new(
  email: "user@mg.com",
  name: "User2",
  password: "123456",
  password_confirmation: "123456",
  admin: false
)
user.save!

puts "2 users created"




ActivityList.create!(
  name: "running",
  theme: "default",
  main_image: "running.png",
  thumb_image: "t-running.png"
)
ActivityList.create!(
  name: "bike",
  theme: "default",
  main_image: "bike.png",
  thumb_image: "t-bike.png"
)
ActivityList.create!(
  name: "chest",
  theme: "default",
  main_image: "chest.png",
  thumb_image: "t-chest.png"
)
ActivityList.create!(
  name: "cross-trainer",
  theme: "default",
  main_image: "cross-trainer.png",
  thumb_image: "t-cross-trainer.png"
)
ActivityList.create!(
  name: "indoor-bike",
  theme: "default",
  main_image: "indoor-bike.png",
  thumb_image: "t-indoor-bike.png"
)
ActivityList.create!(
  name: "legs",
  theme: "default",
  main_image: "legs.png",
  thumb_image: "t-legs.png"
)
ActivityList.create!(
  name: "rowing",
  theme: "default",
  main_image: "rowing.png",
  thumb_image: "t-rowing.png"
)
ActivityList.create!(
  name: "arms",
  theme: "default",
  main_image: "arms.png",
  thumb_image: "t-arms.png"
)
ActivityList.create!(
  name: "weight",
  theme: "default",
  main_image: "weight.png",
  thumb_image: "t-weight.png"
)


puts "10 activity_list created"



2.times do |activity|
  Activity.create!(
    activity_list_id: "2",
    date: "#{activity+1}/1/2018".to_date , 
    duration: "15", 
    kcal: "200",
    user_id: "1"
  )
end
3.times do |activity|
  Activity.create!(
    activity_list_id: "1",
    date: "#{activity+3}/2/2018".to_date , 
    duration: "15", 
    kcal: "200",
    user_id: "1"
  )
end
3.times do |activity|
  Activity.create!(
    activity_list_id: "3",
    date: "#{activity+5}/1/2018".to_date , 
    duration: "15", 
    kcal: "200",
    user_id: "1"
  )
end

2.times do |activity|
  Activity.create!(
    activity_list_id: "4",
    date: "#{activity+8}/1/2018".to_date , 
    duration: "15", 
    kcal: "200",
    user_id: "1"
  )
end

puts "10 activities created"


2.times do |activity|
  Activity.create!(
    activity_list_id: "2",
    date: "#{activity+1}/1/2018".to_date , 
    duration: "15", 
    kcal: "200",
    user_id: "2"
  )
end
3.times do |activity|
  Activity.create!(
    activity_list_id: "1",
    date: "#{activity+3}/2/2018".to_date , 
    duration: "15", 
    kcal: "200",
    user_id: "2"
  )
end 
puts "5 activities created for user 2"
