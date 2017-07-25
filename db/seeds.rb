# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'shoosty1@mac.com', password: 'password')

#to clean up a single record from the users table from sqlite3
#sqlite3 db/development.sqlite3
#delete from users where email = "shoosty1@mac.com";
#run
#rake db:seed    (notice it is singular)
