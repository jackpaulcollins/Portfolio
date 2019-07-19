Rails.application.routes.draw do
  resources :works, except: [:show]
  get 'work/:id', to: 'works#show', as: 'work_show'

  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :blogs

  root to: 'pages#home'

end
