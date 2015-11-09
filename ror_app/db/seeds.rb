# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Situation.create([
	{id: 0, title: 'The president of your country shoots civilians who they think are a threat to their power.'},
	{id: 1, title: 'A neighboring country decides to invade part of your country to improve their strategic position and/or access to fossile ressources.'},
	{id: 2, title: 'A member of your family was captured forcefully by the police and taken into custody for a crime he/she didn\'t commit.'},
	{id: 3, title: 'A member of your family was captured forcefully by forces of the government and taken into custody for critical speech about them or the government.'},
	{id: 4, title: 'A new government rule prohibits drinking alcohol or smoking and is controlled strictly by armed forces. If civilians are caught drinking or smoking on the streets, they will be sent to jail. Unfortunately, you are (somewhat) addicted to alcohol and/or tabaco.'},
	{id: 5, title: 'The political and economical situation in your country is getting more instable every day. Civilians are put into jail without trial. Protests on the streets are struck down bloodily. The situation is likely to escalate soon. Your country has one neighbor country and is surrounded by water on the remaining borders. The situation in the neighboring country is even worse. You decide to leave your country.'},
	{id: 6, title: 'A bomb detonated in your neighborhood, three houses away. It was the fifth detonation close by within 2 months. A rebel group has claimed responsibility for the recent attack. One of your friends died, as he lived in a house close to the detonation.'},
	{id: 7, title: 'Your partner has a different religion than you. It has just been forbidden by the government. Practitioners of that  religion are being hanged publicly and their whole family is under general suspicion of collaboration.'},
	{id: 8, title: 'You work as a police officer in your country and are forced by the government to question people through torture (waterboarding, sleep deprivation, abuse, ...) and you know that these people are innocent. If you don\'t follow the orders, you will be tortured instead.'},
	{id: 9, title: 'You, your wife and your three kids have to flee the country because you are wanted by your government for having sold alcohol. You have enough money to pay for two seets in a boat.'},
	{id: 10, title: 'You hide some friends of your family in your basement which believe in a religion prohibited by your government. Your neighbour knows about it. After a few weeks, you are questioned by the police and they threaten you with years in jail, if you should hide some of these pursued people.'},
	{id: 11, title: 'You are a scientist at a national University. The government tries to build more atomic weapons. You\'re a nuclear scientist and are approached to assist them.'},
	{id: 12, title: 'Your son was imprisoned by the police and taken into custody for critical speech about the government. You visit him in jail. He was imprisoned because he publicly said that the government should not ban public gatherings of groups of any size.'},
	{id: 13, title: 'You immigrated 20 years ago together with your wife and kids. The government was elected recently and is enacting drastic laws. According to the newest law, immigrants are not allowed to stay in the country but have to return to their home country. Your best friend is father to three small children. He lost his property and job. In order to earn money to buy food, he had to join the ruthless army of the government to enforce their laws.'},
	{id: 14, title: 'You work for the police forces of the government to enforce their laws. One of your oldest friends has repeatedly sold cigarettes publicly on the streets, which is prohibited. He has been interrogated and imprisoned before for the same crime and the government looses patience. You have the order to imprison and publicly crucifix him.'},
	{id: 15, title: 'The government of your country is oppressing political opposition with forceful measures. Rebel groups are forming more and more as a consequence. You have been in military service for your country for almost 10 years and are now a general. New intelligence suggests that a rebel group is hiding in a civil hospital in the center of a nearby city. You receive the order to infiltrate the building and clear it. If necessary with casualties.'},
	{id: 16, title: 'The government is enacting a new scientific program to develop a survailance framework to monitor all digital transfer. To this end they read, analyze and store private messages and calls of millions of civilians. You are a Computer Scientist capable of developing such a system and you are asked to assist with developing it.'},
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
	{id: 12, situation_id: 15, text: 'What do you do?'},
	{id: 13, situation_id: 16, text: 'What do you do?'},
	])

Answer.create([
	{id: 0, text: 'You go to the police and try to explain that he/she did nothing wrong.'},
	{id: 1, text: 'Out of fear of being negative consequences, you don\'t do anything.'},
	{id: 48, text: 'You try to buy him/her free with all your money you saved for your retirement.'},

	{id: 2, text: 'You are continuing smoking/drinking and try to do it in secret places.' },
	{id: 3, text: 'You stop smoking/drinking and adjust to the new rules.' },

	{id: 4, text: 'boat' },
	{id: 5, text: 'public transportation' },
	{id: 6, text: 'on foot' },

	{id: 7, text: 'You stay in your country and join the army to fight rebel groups forcefully.' },
	{id: 8, text: 'You stay in your country. You bury your friend.' },
	{id: 41, text: 'You leave the country with your family.' },
	{id: 42, text: 'You stay in the country and publicy protest against the rebel group.' },

	{id: 9, text: 'You help her hiding her religion and risk being hanged as well.' },
	{id: 10, text: 'You tell the government about her to save yourself.' },
	{id: 33, text: 'You leave the country.' },
	
	{id: 11, text: 'You try to let some people escape.' },
	{id: 12, text: 'You refuse to take action in these tortures.' },
	{id: 13, text: 'You follow the orders, but try to mitigate your tortures.' },
	{id: 14, text: 'You follow the orders and are happy to do so.' },

	{id: 15, text: 'You try to hide and wait until you have enough money in several months risking being captured every day.' },
	{id: 16, text: 'You buy two seats for two of your kids.' },
	{id: 17, text: 'You buy two seats for you and your wife.' },
	{id: 18, text: 'You buy a seat for you and one of your kids.' },
	{id: 19, text: 'You buy a seat for your wife and one of your kids.' },
	
	{id: 20, text: 'You deny hiding your friends.' },
	{id: 21, text: 'You give hints to the police where your friends are hiding in your house.' },
	{id: 49, text: 'You deny hiding your friends and search for a safer place for them. Moving them increases the risk that they are seen in public.' },
	{id: 43, text: 'You give hints to the police but ask them to protect your family in return. They may get angry and punish you for  your attempt to trade with them.' },
	{id: 44, text: 'You tell your friends that they cannot stay in your house and that they have to leave.' },

	{id: 22, text: 'You help them because you fear inconvenient consequences, such as loosing your job or being imprisoned.'},
	{id: 23, text: 'You help them because you were about to do that anyways.' },
	{id: 24, text: 'You refuse to help them. You know that some of your colleagues got threats against their families. In other cases they lost their job and were brandmarked on the job market.' },
	
	{id: 25, text: 'You don\'t say anything and accept the decision.' },
	{id: 26, text: 'You contact officials of the government and ask them to release your son. At least you demand a fair trial. Chances are very low, that someone listens. And even lower that your son is released again. He is a danger to the stability of their power.' },
	{id: 27, text: 'You critize the government in conversations to friends and family in secret. You have to live in constant fear that one of the persons you talk to betrays you for a sack of money.' },
	{id: 28, text: 'You publicly speak against the government and thereby accept following your son into prison. Your wife has to care for the other kids alone. There are not many possibilities to earn money.' },
	
	{id: 29, text: 'You try to hide and try to convince him to leave the forces and to look for another job. Although chances are almost non-existent. Also, the government will interrogate him before he can leave the forces as they suspect him to being involved with the "enemies of the country". They will try to convince him to stay by publicly denouncing him, prohibiting him to find a new job.' },
	{id: 30, text: 'You try to hide and to convince him that you should be allowed to stay in the country. However, if he receives the order to force you out of the country he most likely will do whatever is best for his family.' },
	{id: 31, text: 'You try to hide and hope that he will not tell the government about you still being in the country.' },
	{id: 32, text: 'You stop the contact to him and hide somewhere else.' },
	# 33 is above

	{id: 34, text: 'You tell your friend to hide. When the government asks you about him you say that you haven\'t seen him in weeks. You risk being suspected to help him. This may be to your and your family\'s disadvantage in the future.' },
	{id: 35, text: 'You imprison your friend and tell him that it is his own fault. You also tell this to his wife and little daughter.' },
	
	{id: 37, text: 'You refuse to help them.' },
	{id: 38, text: 'You plan on carrying out the order and briefing your solders the next day. You are convinced that it is the right thing.' },
	{id: 39, text: 'You refuse the order and risk military prison. You will be replaced by a new general which will then carry out the order. Probably more ruthlessly.' },
	{id: 40, text: 'You carry out the order because you are convinced that you can neutralize the rebels without casualties. However, casualties are likely.' },
	
	{id: 45, text: 'You help developing the program, because you are convinced that it helps your government to catch the bad guys.' },
	{id: 46, text: 'You help developing the program, because you fear negative consequences such as loosing your job or being put into jail.' },
	{id: 47, text: 'You refuse to help and risk being put into jail or loosing your job and being brandmarked on the job market.' },
	])

UniversalAnswer.create([
	{id:36, text: 'Other ...'}
	])

QuestionHasAnswer.create([
	{answer_id: 0, question_id: 0},
	{answer_id: 1, question_id: 0},
	{answer_id: 48, question_id: 0},
	
	{answer_id: 2, question_id: 1},
	{answer_id: 3, question_id: 1},
	
	{answer_id: 4, question_id: 2},
	{answer_id: 5, question_id: 2},
	{answer_id: 6, question_id: 2},
	
	{answer_id: 7, question_id: 3},
	{answer_id: 8, question_id: 3},
	{answer_id: 41, question_id: 3},
	{answer_id: 42, question_id: 3},
	
	{answer_id: 9, question_id: 4},
	{answer_id: 10, question_id: 4},
	{answer_id: 33, question_id: 4},
	
	{answer_id: 11, question_id: 5},
	{answer_id: 12, question_id: 5},
	{answer_id: 13, question_id: 5},
	{answer_id: 14, question_id: 5},
	
	{answer_id: 15, question_id: 6},
	{answer_id: 16, question_id: 6},
	{answer_id: 17, question_id: 6},
	{answer_id: 18, question_id: 6},
	{answer_id: 19, question_id: 6},
	
	{answer_id: 20, question_id: 7},
	{answer_id: 21, question_id: 7},
	{answer_id: 49, question_id: 7},
	{answer_id: 43, question_id: 7},
	{answer_id: 44, question_id: 7},
	
	{answer_id: 22, question_id: 8},
	{answer_id: 23, question_id: 8},
	{answer_id: 24, question_id: 8},
	
	{answer_id: 25, question_id: 9},
	{answer_id: 26, question_id: 9},
	{answer_id: 27, question_id: 9},
	{answer_id: 28, question_id: 9},
	
	{answer_id: 29, question_id: 10},
	{answer_id: 30, question_id: 10},
	{answer_id: 31, question_id: 10},
	{answer_id: 32, question_id: 10},
	{answer_id: 33, question_id: 10},
	
	{answer_id: 34, question_id: 11},
	{answer_id: 35, question_id: 11},
	
	{answer_id: 37, question_id: 12},
	{answer_id: 38, question_id: 12},
	{answer_id: 39, question_id: 12},
	{answer_id: 40, question_id: 12},

	{answer_id: 45, question_id: 13},
	{answer_id: 46, question_id: 13},
	{answer_id: 47, question_id: 13},
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
	{survey_id: 0, situation_id: 15},
	{survey_id: 0, situation_id: 16},
	])

Nationality.create([
{name: 'Afghan', continent_id: 4},
{name: 'Albanian', continent_id: 3},
{name: 'Algerian', continent_id: 5},
{name: 'American', continent_id: 2},
{name: 'Andorran', continent_id: 3},
{name: 'Angolan', continent_id: 5},
{name: 'Antiguans', continent_id: 2},
{name: 'Argentinean', continent_id: 0},
{name: 'Armenian', continent_id: 3},
{name: 'Australian', continent_id: 1},
{name: 'Austrian', continent_id: 3},
{name: 'Azerbaijani', continent_id: 3},
{name: 'Bahamian', continent_id: 2},
{name: 'Bahraini', continent_id: 4},
{name: 'Bangladeshi', continent_id: 4},
{name: 'Barbadian', continent_id: 2},
{name: 'Barbudans', continent_id: 2},
{name: 'Batswana', continent_id: 5},
{name: 'Belarusian', continent_id: 3},
{name: 'Belgian', continent_id: 3},
{name: 'Belizean', continent_id: 2},
{name: 'Beninese', continent_id: 5},
{name: 'Bhutanese', continent_id: 4},
{name: 'Bolivian', continent_id: 0},
{name: 'Bosnian', continent_id: 3},
{name: 'Brazilian', continent_id: 0},
{name: 'British', continent_id: 3},
{name: 'Bruneian', continent_id: 4},
{name: 'Bulgarian', continent_id: 3},
{name: 'Burkinabe', continent_id: 5},
{name: 'Burmese', continent_id: 4},
{name: 'Burundian', continent_id: 5},
{name: 'Cambodian', continent_id: 4},
{name: 'Cameroonian', continent_id: 5},
{name: 'Canadian', continent_id: 2},
{name: 'Cape Verdean', continent_id: 5},
{name: 'Central African', continent_id: 5},
{name: 'Chadian', continent_id: 5},
{name: 'Chilean', continent_id: 0},
{name: 'Chinese', continent_id: 4},
{name: 'Colombian', continent_id: 0},
{name: 'Comoran', continent_id: 5},
{name: 'Congolese', continent_id: 5},
{name: 'Costa Rican', continent_id: 2},
{name: 'Croatian', continent_id: 3},
{name: 'Cuban', continent_id: 2},
{name: 'Cypriot', continent_id: 3},
{name: 'Czech', continent_id: 3},
{name: 'Danish', continent_id: 3},
{name: 'Djibouti', continent_id: 5},
{name: 'Dominican', continent_id: 2},
{name: 'Dutch', continent_id: 3},
{name: 'East Timorese', continent_id: 4},
{name: 'Ecuadorean', continent_id: 0},
{name: 'Egyptian', continent_id: 5},
{name: 'Emirian', continent_id: 4},
{name: 'Equatorial Guinean', continent_id: 5},
{name: 'Eritrean', continent_id: 5},
{name: 'Estonian', continent_id: 3},
{name: 'Ethiopian', continent_id: 5},
{name: 'Fijian', continent_id: 1},
{name: 'Filipino', continent_id: 4},
{name: 'Finnish', continent_id: 3},
{name: 'French', continent_id: 3},
{name: 'Gabonese', continent_id: 5},
{name: 'Gambian', continent_id: 5},
{name: 'Georgian', continent_id: 3},
{name: 'German', continent_id: 3},
{name: 'Ghanaian', continent_id: 5},
{name: 'Greek', continent_id: 3},
{name: 'Grenadian', continent_id: 2},
{name: 'Guatemalan', continent_id: 2},
{name: 'Guinea-Bissauan', continent_id: 5},
{name: 'Guinean', continent_id: 5},
{name: 'Guyanese', continent_id: 0},
{name: 'Haitian', continent_id: 2},
{name: 'Herzegovinian', continent_id: 3},
{name: 'Honduran', continent_id: 2},
{name: 'Hungarian', continent_id: 3},
{name: 'I-Kiribati', continent_id: 1},
{name: 'Icelander', continent_id: 3},
{name: 'Indian', continent_id: 4},
{name: 'Indonesian', continent_id: 4},
{name: 'Iranian', continent_id: 4},
{name: 'Iraqi', continent_id: 4},
{name: 'Irish', continent_id: 3},
{name: 'Israeli', continent_id: 4},
{name: 'Italian', continent_id: 3},
{name: 'Ivorian', continent_id: 5},
{name: 'Jamaican', continent_id: 2},
{name: 'Japanese', continent_id: 4},
{name: 'Jordanian', continent_id: 4},
{name: 'Kazakhstani', continent_id: 4},
{name: 'Kenyan', continent_id: 5},
{name: 'Kittian and Nevisian', continent_id: 2},
{name: 'Kuwaiti', continent_id: 4},
{name: 'Kyrgyz', continent_id: 4},
{name: 'Laotian', continent_id: 4},
{name: 'Latvian', continent_id: 3},
{name: 'Lebanese', continent_id: 4},
{name: 'Liberian', continent_id: 5},
{name: 'Libyan', continent_id: 5},
{name: 'Liechtensteiner', continent_id: 3},
{name: 'Lithuanian', continent_id: 3},
{name: 'Luxembourger', continent_id: 3},
{name: 'Macedonian', continent_id: 3},
{name: 'Malagasy', continent_id: 5},
{name: 'Malawian', continent_id: 5},
{name: 'Malaysian', continent_id: 4},
{name: 'Maldivan', continent_id: 4},
{name: 'Malian', continent_id: 5},
{name: 'Maltese', continent_id: 3},
{name: 'Marshallese', continent_id: 1},
{name: 'Mauritanian', continent_id: 5},
{name: 'Mauritian', continent_id: 5},
{name: 'Mexican', continent_id: 2},
{name: 'Micronesian', continent_id: 1},
{name: 'Moldovan', continent_id: 3},
{name: 'Monacan', continent_id: 3},
{name: 'Mongolian', continent_id: 4},
{name: 'Moroccan', continent_id: 5},
{name: 'Mosotho', continent_id: 5},
{name: 'Motswana', continent_id: 5},
{name: 'Mozambican', continent_id: 5},
{name: 'Namibian', continent_id: 5},
{name: 'Nauruan', continent_id: 1},
{name: 'Nepalese', continent_id: 4},
{name: 'New Zealander', continent_id: 1},
{name: 'Nicaraguan', continent_id: 2},
{name: 'Nigerian', continent_id: 5},
{name: 'Nigerien', continent_id: 5},
{name: 'North Korean', continent_id: 4},
{name: 'Northern Irish', continent_id: 3},
{name: 'Norwegian', continent_id: 3},
{name: 'Omani', continent_id: 4},
{name: 'Pakistani', continent_id: 4},
{name: 'Palauan', continent_id: 1},
{name: 'Panamanian', continent_id: 2},
{name: 'Papua New Guinean', continent_id: 1},
{name: 'Paraguayan', continent_id: 0},
{name: 'Peruvian', continent_id: 0},
{name: 'Polish', continent_id: 3},
{name: 'Portuguese', continent_id: 3},
{name: 'Qatari', continent_id: 4},
{name: 'Romanian', continent_id: 3},
{name: 'Russian', continent_id: 4},
{name: 'Rwandan', continent_id: 5},
{name: 'Saint Lucian', continent_id: 2 },
{name: 'Salvadoran', continent_id: 2},
{name: 'Samoan', continent_id: 1},
{name: 'San Marinese', continent_id: 3},
{name: 'Sao Tomean', continent_id: 5},
{name: 'Saudi', continent_id: 4},
{name: 'Scottish', continent_id: 3},
{name: 'Senegalese', continent_id: 5},
{name: 'Serbian', continent_id: 3},
{name: 'Seychellois', continent_id: 5},
{name: 'Sierra Leonean', continent_id: 5},
{name: 'Singaporean', continent_id: 4},
{name: 'Slovakian', continent_id: 3},
{name: 'Slovenian', continent_id: 3},
{name: 'Solomon Islander', continent_id: 1},
{name: 'Somali', continent_id: 5},
{name: 'South African', continent_id: 5},
{name: 'South Korean', continent_id: 4},
{name: 'Spanish', continent_id: 3},
{name: 'Sri Lankan', continent_id: 4},
{name: 'Sudanese', continent_id: 5},
{name: 'Surinamer', continent_id: 0},
{name: 'Swazi', continent_id: 5},
{name: 'Swedish', continent_id: 3},
{name: 'Swiss', continent_id: 3},
{name: 'Syrian', continent_id: 4},
{name: 'Taiwanese', continent_id: 4},
{name: 'Tajik', continent_id: 4},
{name: 'Tanzanian', continent_id: 5},
{name: 'Thai', continent_id: 4},
{name: 'Togolese', continent_id: 5},
{name: 'Tongan', continent_id: 1},
{name: 'Trinidadian or Tobagonian', continent_id: 2},
{name: 'Tunisian', continent_id: 5},
{name: 'Turkish', continent_id: 4},
{name: 'Tuvaluan', continent_id: 1},
{name: 'Ugandan', continent_id: 5},
{name: 'Ukrainian', continent_id: 3},
{name: 'Uruguayan', continent_id: 0},
{name: 'Uzbekistani', continent_id: 4},
{name: 'Venezuelan', continent_id: 0},
{name: 'Vietnamese', continent_id: 4},
{name: 'Welsh', continent_id: 3},
{name: 'Yemenite', continent_id: 4},
{name: 'Zambian', continent_id: 5},
{name: 'Zimbabwean', continent_id: 5}])

Continent.create([
	{id: 0, name: 'South America'},
	{id: 1, name: 'Oceania'},
	{id: 2, name: 'North America'},
	{id: 3, name: 'Europe'},
	{id: 4, name: 'Asia'},
	{id: 5, name: 'Africa'},
	])