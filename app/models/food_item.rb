class FoodItem < ActiveRecord::Base
  def self.filter_by_section(section)
  	where(section: section)
  end
  def self.sort_by_name(name)
  	order(name: :asc)
  end
end
