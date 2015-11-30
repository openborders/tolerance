class IntegrateI18nQuestions < ActiveRecord::Migration
  def change
  	i18n_question_text = {
	  0 => 'question_0_text',
	  1 => 'question_1_text',
	  2 => 'question_2_text',
	  3 => 'question_3_text',
	  4 => 'question_4_text',
	  5 => 'question_5_text',
	  6 => 'question_6_text',
	  7 => 'question_7_text',
	  8 => 'question_8_text',
	  9 => 'question_9_text',
	  10 => 'question_10_text',
	  11 => 'question_11_text',
	  12 => 'question_12_text',
	  13 => 'question_13_text'}

  	i18n_question_text.each do |quest_id, new_text|
	  	q = Question.find(quest_id)
	  	q.text = new_text
	  	q.save()
  	end
  end
end
