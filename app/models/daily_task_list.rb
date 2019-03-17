class DailyTaskList < ApplicationRecord
  validates :title, :description, presence: true
  belongs_to :user
  belongs_to :task
end
