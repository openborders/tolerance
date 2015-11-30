class IntegrateI18nUniversalAnswers < ActiveRecord::Migration
  def change
  	i18n_answer_text = {
	  0 => 'unianswer_36_text'}

  	i18n_answer_text.each do |a_id, new_text|
	  	a = Answer.find(a_id)
	  	a.text = new_text
	  	a.save()
  	end
  end
end
