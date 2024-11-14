class CreateSubTasks < ActiveRecord::Migration[7.2]
  def change
    create_table :sub_tasks do |t|
      t.string :title
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
