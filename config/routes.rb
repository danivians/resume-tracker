ResumeTracker::Application.routes.draw do

  resources :users
  resources :sources
  resources :statuses
  resources :candidates

  root :to => 'candidates#index'

end
