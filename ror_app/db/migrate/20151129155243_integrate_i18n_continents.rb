class IntegrateI18nContinents < ActiveRecord::Migration
  def change
  	i18n_continents = {
	  0 => 'cont_0_name',
	  1 => 'cont_1_name',
	  2 => 'cont_2_name',
	  3 => 'cont_3_name',
	  4 => 'cont_4_name',
	  5 => 'cont_5_name',
  	}

  	i18n_continents.each do |cont_id, new_name|
	  	c = Continent.find(cont_id)
	  	c.name = new_name
	  	c.save()
  	end
  end
end
