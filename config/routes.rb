Rails.application.routes.draw do

  resources :workoutposts
  root 'main#index'

  resources :users,
    only: [:new, :create],
    path_names: { new: 'signup' }


  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create'

  delete '/logout',
    to: 'sessions#destroy'

  get 'users/:id' => 'users#show', :as => 'user_profile'

  get 'about' => 'main#about'
  get 'contact' => 'main#contact'


  get 'workouts/new' => 'workouts#new'
  get 'workouts' => 'workouts#index'
  get 'workouts/show/:workouts_id' => 'workouts#show', :as => 'show_workout'

end
