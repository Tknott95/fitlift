Rails.application.routes.draw do

  root 'main#index'

  resources :users,
    only: [:new, :create],
    path_names: { new: 'signup' }


  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create'

  delete '/logout',
    to: 'sessions#destroy'

  get 'users/:id' => 'users#show'

  get 'about' => 'main#about'
  get 'contact' => 'main#contact'

end
