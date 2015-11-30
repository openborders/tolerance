class IntegrateI18nUniversalAnswers < ActiveRecord::Migration
  def change
  	i18n_answer_text = {
	  36 => 'unianswer_36_text'}

  	i18n_answer_text.each do |a_id, new_text|
	  	a = UniversalAnswer.find(a_id)
	  	a.text = new_text
	  	a.save()
  	end
  end
end
