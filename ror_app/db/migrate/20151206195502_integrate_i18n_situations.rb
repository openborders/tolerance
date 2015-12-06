class IntegrateI18nSituations < ActiveRecord::Migration
  def change
  	i18n_situations = {
	  0 => 'situation_0_title',
	  1 => 'situation_1_title',
	  2 => 'situation_2_title',
	  3 => 'situation_3_title',
	  4 => 'situation_4_title',
	  5 => 'situation_5_title',
	  6 => 'situation_6_title',
	  7 => 'situation_7_title',
	  8 => 'situation_8_title',
	  9 => 'situation_9_title',
	  10 => 'situation_10_title',
	  11 => 'situation_11_title',
	  12 => 'situation_12_title',
	  13 => 'situation_13_title',
	  14 => 'situation_14_title',
	  15 => 'situation_15_title',
	  16 => 'situation_16_title',
  	}

  	i18n_situations.each do |situation_id, new_title|
	  	c = Situation.find(situation_id)
	  	c.title = new_title
	  	c.save()
  	end
  end
end
