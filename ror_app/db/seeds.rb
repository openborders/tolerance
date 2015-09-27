# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Situation.create([
	{id: 0, title: 'Your president decides to bomb innocent civilians, in order to maintain power.'},
	{id: 1, title: 'A neighboring country decides to invade part of your country to improve their strategic position and/or access to fossile ressources.'},
	{id: 2, title: 'A member of your family was captured forcefully by the police and taken into custody for a crime he/she didn''t commit.'},
	{id: 3, title: 'A member of your family was captured forcefully by forces of the government and taken into custody for critical speech about them or the government.'}
	])

Question.create([
	{id: 0, text: 'What do you do?', :situation => Situation.find(2)},
	])

Answer.create([
	{question: Question.find(0), text: 'You go to the police and try to explain that he/she did nothing wrong.'},
	{question: Question.find(0), text: 'Out of fear of getting punished, you take no action.'}
	])