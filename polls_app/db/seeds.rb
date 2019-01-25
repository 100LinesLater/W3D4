# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{username: 'Mark Wahlberg'}, {username: 'Anakin Skywalker'}, {username: 'Martha Fucking Stewart'}, {username: 'Jean Luc Picardo'}])

polls = Poll.create([{title: 'Why do I make poor choices?', author_id: 3}, {title: 'Where do babies come from?', author_id: 1}, {title: 'When will the electoral college be abolished?', author_id: 2}, {title: 'What is this orange man doing on tv?', author_id: 4}])

questions = Question.create([{text: 'Who made this bad decision?', poll_id: 1}, {text: 'Why do I listen to my dumb friends?', poll_id: 2}, {text: 'Is THAT what a stork is?', poll_id: 3}, {text: 'Why does daddy say to go ask mommy?', poll_id: 2}, {text: '3', poll_id: 1}, {text: '4', poll_id: 2}])

answerchoices = AnswerChoice.create([ {text: 'Yes', question_id: 1}, {text: 'No', question_id: 1}, {text: 'Possible, but doubtful', question_id: 3}, {text: 'I have no idea, I didn\'t vote for him.', question_id: 4}])

responses = Response.create([{answer_choice_id: 1, user_id: 3}, {answer_choice_id: 2, user_id: 4}])