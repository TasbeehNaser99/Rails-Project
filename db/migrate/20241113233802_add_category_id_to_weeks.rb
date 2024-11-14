class AddCategoryIdToWeeks < ActiveRecord::Migration[7.2]
  def change
    add_column :weeks, :category_id, :integer
  end
end
