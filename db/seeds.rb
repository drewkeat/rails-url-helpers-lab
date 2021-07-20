# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'faker'

5.times do 
    student = {}
    user = Faker::TvShows::FamilyGuy.character.split(" ")
    student[:first_name] = user.first
    student[:last_name] = user.last
    student[:active] = Faker::Boolean.boolean
    Student.create(student)
end
