Rails.application.routes.draw do

  resources :journals do
    resources :tasks do
      resources :descriptions
    end
  end

  devise_for :users, controllers: { 
    registrations: "users/registrations",
    sessions: "users/sessions",
    confirmations: "users/confirmations"
  }

  devise_scope :user do
    post 'users/sign_up', to: 'devise/registrations#create'
  end

  root to: 'home#index'

  # Categories Routes

  # get '/journals' => 'journals#index', as: 'journals'
  # get '/journals/new' => 'journals#new', as: 'new_journal'

  post '/journals' => 'journals#create'

  delete '/journals/:id' => 'journals#destroy', as: 'delete_journal'

  # get '/journals/:id' => 'journals#show', as: 'journal'

  # get '/journals/:id/edit' => 'journals#edit', as: 'edit_journal'

  # Tasks Routes

  # get '/journals/:journal_id/tasks' => 'tasks#index', as: 'journal_tasks'

  post '/journals/:journal_id/tasks' => 'tasks#create'

  delete '/journals/:journal_id/tasks/:id' => 'tasks#destroy', as: 'delete_journal_task'

  # get '/journals/:journal_id/tasks/new' => 'tasks#new', as: 'new_journal_task'

  # get '/journals/:journal_id/tasks/:id/edit' => 'tasks#edit', as: 'edit_journal_task'

  # get '/journals/:journal_id/tasks/:id' => 'tasks#show', as: 'journal_task'

  # Description Routes

end
