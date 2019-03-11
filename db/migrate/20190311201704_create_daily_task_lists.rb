class CreateDailyTaskLists < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_task_lists do |t|
      t.string :title
      t.text :description
      t.boolean :completed
      t.integer :user_id
      t.integer :task_id

      t.timestamps
    end
  end
end
