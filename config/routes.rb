Rails.application.routes.draw do
  resources :works, except: [:show]
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
