Rails.application.routes.draw do

  get 'recipes/index'

  get 'nutrition_news/index'

  get 'news/index'

  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

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

  get 'new' => 'news#index'

  get 'video' => 'video#index'

  get 'chest' => 'main#chest'
  get 'arms' => 'main#arms'
  get 'back' => 'main#back'
  get 'cardio' => 'main#cardio'
  get 'legs' => 'main#legs'

end
