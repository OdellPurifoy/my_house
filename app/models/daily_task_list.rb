class DailyTaskList < ApplicationRecord
  validates :title, :description, presence: true
  has_and_belongs_to_many :users
  has_and_belongs_to_many :tasks

  accepts_nested_attributes_for :tasks
end
