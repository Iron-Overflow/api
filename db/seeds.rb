# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

question = Questions.create!(title: Faker::Lorem.word, inquiry: Faker::Lorem.paragraph, category: Faker::Hacker.adjectiv, user_id: 1, created_at: Faker::Time.between(DateTime.now - 1, DateTime.now))
