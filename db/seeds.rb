# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  User.create!(username: Faker::Internet.user_name,
      email: Faker::Internet.free_email,
      password_digest: Faker::Internet.password)

end

users = User.all
30.times do
  Question.create!(title: Faker::Lorem.word,
      body: Faker::Hacker.say_something_smart,
      category: Faker::Hacker.adjective,
      user_id: users.sample.id,
      created_at: Faker::Time.backward(1000, :all))
end

questions = Question.all
users = User.all
90.times do
  Answer.create!(question_id: questions.sample.id,
      user_id: users.sample.id,
      created_at: Faker::Time.backward(1000, :all))
end
