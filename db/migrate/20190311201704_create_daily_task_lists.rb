class CreateDailyTaskLists < ActiveRecord::Migration[5.2]
  def change
    create_table :daily_task_lists do |t|
      t.string :title, null: false, default: ''
      t.text :description, null: false, default: ''
      t.boolean :completed
      t.integer :user_id
      t.integer :task_id

      t.timestamps
    end
  end
end
