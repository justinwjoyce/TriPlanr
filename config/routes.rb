Rails.application.routes.draw do
  resources :periodization_years do
    get 'calcATP', on: :member
  end
  resources :periodization_weeks
  resources :periodization_cycles
  resources :settings
  resources :tests
  resources :goals
  resources :workouts
  root to: "workouts#index"

  match 'tsscalc' => 'pages#index', via: :all
  match 'dash' => 'pages#dash', via: :all
  match 'pmc' => 'pages#pmc', via: :all
  match 'runspeed' => 'pages#runspeed', via: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
