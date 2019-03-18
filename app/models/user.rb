class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :daily_task_lists
  has_many :tasks, through: :daily_task_lists

  def email_display
    email = email if email.present?
    "Welcome #{email}"
  end
end
