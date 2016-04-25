Rails.application.routes.draw do

  root 'main#index'

  resources :users,
    only: [:new, :create],
    path_names: { new: 'signup' }

end
