Rails.application.routes.draw do
  resources :daily_task_lists
  devise_for :users
  root to: 'daily_task_lists#index'
end
