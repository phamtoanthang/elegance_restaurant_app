class FoodItem < ActiveRecord::Base
  def self.filter_by_section(section)
  	where(section: section)
  end
  
  def self.sort_by_name(name)
  	order(name: :asc)
  end

  def url_or_auto
  	if url.present?
  		url
  	else
  		"http://loremflickr.com/320/240/#{name}"
  	end
  end

  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  end

end
