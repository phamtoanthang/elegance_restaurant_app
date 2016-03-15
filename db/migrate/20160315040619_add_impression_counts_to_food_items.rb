class AddImpressionCountsToFoodItems < ActiveRecord::Migration
  def change
    add_column :food_items, :impressions_count, :integer
  end
end
