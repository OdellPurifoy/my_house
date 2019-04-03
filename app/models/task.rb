class Task < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  has_and_belongs_to_many :daily_task_list, optional: true
  has_many :users
end
