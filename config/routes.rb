Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :works, except: [:show]
  get 'react-items', to: 'works#react'
  get 'work/:id', to: 'works#show', as: 'work_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs do 
    member do
      get :toggle_status
    end
  end

  root to: 'pages#home'

end
