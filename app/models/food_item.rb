class FoodItem < ActiveRecord::Base
  def self.filter_by_section(section)
  	where(section: section)
  end
end
