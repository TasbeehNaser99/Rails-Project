class AddTitleAndDescriptionToWeeks < ActiveRecord::Migration[7.2]
  def change
    add_column :weeks, :title, :string
    add_column :weeks, :description, :text
  end
end
