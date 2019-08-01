Rails.application.routes.draw do
  # get 'sessions/new'
  resources :articles # globaliza todas las rutas: get, post, delete, patch, put
  resources :comments
  resources :images
  devise_for :users
  # direccion de la pagina
  # get 'welcome/index' # debemos poner en la url welcome/index para que nos direccione a ella.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index' # nos direcciona directamente a la pagina.
end
