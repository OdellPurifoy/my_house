json.extract! daily_task_list, :id, :title, :description, :completed, :user_id, :task_id, :created_at, :updated_at
json.url daily_task_list_url(daily_task_list, format: :json)
