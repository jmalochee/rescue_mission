# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(username: 'Ho Now User', email: 'honowuser@heynow.com')
User.create!(username: 'Hey Now User', email: 'heynowuser@heynow.com')
Question.create!(title: "Here's a question title with at least 50 characters.", description: "Here's a question title with at least 50 characters. Here's a question title with at least 50 characters. Here's a question title with at least 50 characters.", user_id: 1)
Question.create!(title: "Here's another question title with at least 50 characters.", description: "Here's a question title with at least 50 characters. Here's a question title with at least 50 characters. Here's a question title with at least 50 characters.", user_id: 1)
Question.create!(title: "Here's another another question title with at least 50 characters.", description: "Here's a question title with at least 50 characters. Here's a question title with at least 50 characters. Here's a question title with at least 50 characters.", user_id: 2)
