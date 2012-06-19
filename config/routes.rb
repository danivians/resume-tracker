ResumeTracker::Application.routes.draw do

  resources :users do
    resources :candidates, only: :index
  end
  resources :statuses do
    resources :candidates, only: :index
  end
  resources :sources
  resources :candidates

  root :to => 'candidates#index'

end
