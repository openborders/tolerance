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
	{id: 3, title: 'A member of your family was captured forcefully by forces of the government and taken into custody for critical speech about them or the government.'},
	{id: 4, title: 'A new government rule prohibits drinking alcohol or smoking and is controlled strictly by armed forces. If they see you drinking or smoking, they will send you to jail. Unfortunately, you are (somewhat) addicted to alcohol and/or tabaco.'},
	{id: 5, title: 'The situation in your country is getting worse every day and your country is surrounded by water on most side and a country with a worse situation than in your own. You decide to flee to a neighboring country.'},
	{id: 6, title: 'A bomb detonated next to your neighbourhood. Luckily nobody in your family was harmed, but a friend of you living there died.'},
	{id: 7, title: 'Your wife/husband/partner has a different religion than yours which is now forbidden by the government. Practitioners of her religion are being hanged publicly and their whole family is under general suspicion to collaborate.'},
	{id: 8, title: 'You work as a police officer in your country and are forced by the government/by a dictator to question people through torture (waterboarding, sleep deprivation, abuse, ...) and you know exactly that these people are innocent. If you don''t follow the orders, you will be tortured instead.'},
	{id: 9, title: 'You, your wife and your three kids have to flee the country because you are wanted by your government for having sold alcohol. You have enough money to pay for two seets in a boat.'},
	{id: 10, title: 'You hide some friends of your family which believe in a religion prohibited by your government in your basement. Your neighbour knows about your situation. After a few weeks, you are being questioned by the police and they threaten you with years in jail, if you should hide some of these haunted/pursued people.'},
	{id: 11, title: 'You are a scientist at your local university. The new government tries to build more atom powered weapons. You''re spezialized? in this area and have to help them to create these weapons. Otherwise, you will being punished.'},
	{id: 12, title: 'Your son was imprisoned by forces of the government and taken into custody for critical speech about the government.'},
	{id: 13, title: 'You immigrated 20 years ago together with your wife and kids. The government has changed recently and is enacting drastic laws. According to the newest law, immigrants are not allowed to stay in the country but have to return to their home country. Your best friend is father to three small children. He lost his property and job. In order to earn money to buy food, he had to join the ruthless army of the government to enforce their laws.'},
	{id: 14, title: 'You work for the government to brutally enforce their laws. One of your oldest friends has repeatedly sold cigarettes publicly on the streets, which is prohibited. He has been interrogated and imprisoned before for the same crime and the government looses patience. You have the order to imprison and publicly crucifix him.'},
	])

Question.create([
	{id: 0, situation_id: 2, text: 'What do you do?'},
	{id: 1, situation_id: 4, text: 'What do you do?'},
	{id: 2, situation_id: 5, text: 'You try to flee via ...'},
	{id: 3, situation_id: 6, text: 'How do you react?'},
	{id: 4, situation_id: 7, text: 'What do you do?'},
	{id: 5, situation_id: 8, text: 'How do you behave?'},
	{id: 6, situation_id: 9, text: 'What will you do?'},
	{id: 7, situation_id: 10, text: 'How do you react?'},
	{id: 8, situation_id: 11, text: 'How do you react?'},
	{id: 9, situation_id: 12, text: 'What do you do?'},
	{id: 10, situation_id: 13, text: 'How do you react?'},
	{id: 11, situation_id: 14, text: 'What will you do?'},
	])

Answer.create([
	{question_id: 0, text: 'You go to the police and try to explain that he/she did nothing wrong.'},
	{question_id: 0, text: 'Out of fear of getting punished, you take no action.'},
	{question_id: 1, text: 'You are continuing smoking/drinking and try to do it in secret places.' },
	{question_id: 1, text: 'You stop smoking/drinking and adjust to the new rules.' },
	{question_id: 2, text: 'boat' },
	{question_id: 2, text: 'public transportation' },
	{question_id: 2, text: 'on foot' },
	{question_id: 3, text: 'You take action and try to flee.' },
	{question_id: 3, text: 'You decide to stay in your country. You demonstrate your decision by burying your friend.' },
	{question_id: 4, text: 'You help her hiding her religion and risk being hanged as well.' },
	{question_id: 4, text: 'You tell the government about her to save yourself.' },
	{question_id: 5, text: 'You try to let some people escape.' },
	{question_id: 5, text: 'You refuse to take action in these tortures.' },
	{question_id: 5, text: 'You follow the orders, but try to mitigate your tortures.' },
	{question_id: 5, text: 'You follow the orders and are happy to do so.' },
	{question_id: 6, text: 'You try to hide and wait until you have enough money in several months risking being captured every day.' },
	{question_id: 6, text: 'You buy two seats for two of your kids.' },
	{question_id: 6, text: 'You buy two seats for you and your wife.' },
	{question_id: 6, text: 'You buy a seat for you and one of your kids.' },
	{question_id: 6, text: 'You buy a seat for your wife and one of your kids.' },
	{question_id: 7, text: 'You deny hiding your friends.' },
	{question_id: 7, text: 'You give hints to the police where your friends are hiding in your house.' },
	{question_id: 8, text: 'You help them building mass destruction weapons against your will.' },
	{question_id: 8, text: 'You help them building mass destruction weapons, which was on your mind anyway.' },
	{question_id: 8, text: 'You refuse to help them.' },
	{question_id: 9, text: 'You stay calm and quiet and accept the superiour government.' },
	{question_id: 9, text: 'You contact officials of the government and ask them to release your son. Chances are very low, that you are heard and even if that your son is released again. He is a danger to the stability of their power.' },
	{question_id: 9, text: 'You critize the government in conversations to friends and family in secret. You trust them, but you have to live in constant fear that one of the persons you talk to betrays you for a sack of money.' },
	{question_id: 9, text: 'You publicly speak against the government and thereby accept following your son into prison. Your wife has to care for the other kids alone. There are not many possibilities to earn money.' },
	{question_id: 10, text: 'You try to hide and try to convince him to leave the forces and to look for another job. Although chances are almost non-existent. Also, the government will interrogate him before he can leave the forces as they suspect him to being involved with the "enemies of the country". They will try to convince him to stay by publicly denouncing him, prohibiting him to find a new job.' },
	{question_id: 10, text: 'You try to hide and to convince him that you should be allowed to stay in the country. However, if he receives the order to force you out of the country he most likely will do whatever is best for his family.' },
	{question_id: 10, text: 'You try to hide and hope that he will not tell the government about you still being in the country.' },
	{question_id: 10, text: 'You stop the contact to him and hide somewhere else.' },
	{question_id: 10, text: 'You leave the country.' },
	{question_id: 11, text: 'You tell your friend to hide. When the government asks you about him you tell them that he was hiding. You risk being suspected to have helped him. This may be to your and your family''s disadvantage in the future.' },
	{question_id: 11, text: 'You imprison your friend and tell him that it is his own fault. You also tell this to his wife and little daughter.' },
	])

Survey.create([
	{id: 0, title: 'Tolerance', text: 'TODO'},
	])

SurveyHasSituation.create([
	{survey_id: 0, situation_id: 0},
	{survey_id: 0, situation_id: 1},
	{survey_id: 0, situation_id: 2},
	{survey_id: 0, situation_id: 3},
	{survey_id: 0, situation_id: 4},
	{survey_id: 0, situation_id: 5},
	{survey_id: 0, situation_id: 6},
	{survey_id: 0, situation_id: 7},
	{survey_id: 0, situation_id: 8},
	{survey_id: 0, situation_id: 9},
	{survey_id: 0, situation_id: 10},
	{survey_id: 0, situation_id: 11},
	{survey_id: 0, situation_id: 12},
	{survey_id: 0, situation_id: 13},
	{survey_id: 0, situation_id: 14},
	])

Nationality.create([
	{id: 0, name: 'German'},
	{id: 1, name: 'Danish'},
	{id: 2, name: 'Syrian'},
	])