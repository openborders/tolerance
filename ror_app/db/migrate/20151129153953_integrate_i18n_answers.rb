class IntegrateI18nAnswers < ActiveRecord::Migration
  def change
  	i18n_answer_text = {
	  0 => 'answer_0_text', 
	  1 => 'answer_1_text', 
	  48 => 'answer_48_text', 
	  50 => 'answer_50_text', 
	  2 => 'answer_2_text', 
	  3 => 'answer_3_text', 
	  4 => 'answer_4_text', 
	  5 => 'answer_5_text', 
	  6 => 'answer_6_text', 
	  7 => 'answer_7_text', 
	  8 => 'answer_8_text', 
	  41 => 'answer_41_text', 
	  42 => 'answer_42_text', 
	  9 => 'answer_9_text', 
	  10 => 'answer_10_text', 
	  33 => 'answer_33_text', 
	  51 => 'answer_51_text', 
	  52 => 'answer_52_text', 
	  11 => 'answer_11_text', 
	  12 => 'answer_12_text', 
	  13 => 'answer_13_text', 
	  14 => 'answer_14_text', 
	  15 => 'answer_15_text', 
	  16 => 'answer_16_text', 
	  17 => 'answer_17_text', 
	  18 => 'answer_18_text', 
	  19 => 'answer_19_text', 
	  20 => 'answer_20_text', 
	  21 => 'answer_21_text', 
	  49 => 'answer_49_text', 
	  43 => 'answer_43_text', 
	  44 => 'answer_44_text', 
	  22 => 'answer_22_text', 
	  23 => 'answer_23_text', 
	  24 => 'answer_24_text', 
	  25 => 'answer_25_text', 
	  26 => 'answer_26_text', 
	  27 => 'answer_27_text', 
	  28 => 'answer_28_text', 
	  29 => 'answer_29_text', 
	  30 => 'answer_30_text', 
	  32 => 'answer_32_text', 
	  34 => 'answer_34_text', 
	  35 => 'answer_35_text', 
	  37 => 'answer_37_text', 
	  38 => 'answer_38_text', 
	  39 => 'answer_39_text', 
	  40 => 'answer_40_text', 
	  45 => 'answer_45_text', 
	  46 => 'answer_46_text', 
	  47 => 'answer_47_text', 
	  53 => 'answer_53_text'}

  	i18n_answer_text.each do |a_id, new_text|
	  	a = Answer.find(a_id)
	  	a.text = new_text
	  	a.save()
  	end
  end
end
