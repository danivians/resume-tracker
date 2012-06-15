ResumeTracker::Application.routes.draw do

  resources :users do
    resources :candidates, only: :index
  end
  resources :sources
  resources :statuses
  resources :candidates

  root :to => 'candidates#index'

end
