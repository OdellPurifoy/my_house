class Task < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  has_many :daily_task_lists
  has_many :users
end
