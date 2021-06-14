# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TWEET #1
Tweet.create({
    title: "Just found this", 
    content: "the square of the hypotenuse is equal to the sum of the squares of the other two sides", 
    author: "Pythagoras570"
})

# TWEET #2
Tweet.create({
    title: "I'm walkin' here", 
    content: "Hey, I'm walkin' here!", 
    author: "Nicky62"
})

# Use Faker to generate 10 random Tweets
10.times do
 Tweet.create(
     title:  Faker::Hipster.sentence(word_count: 3),
     content: Faker::Quote.fortune_cookie,
     author: Faker::Twitter.screen_name
 )
end