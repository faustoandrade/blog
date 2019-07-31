Rails.application.routes.draw do
  devise_for :models
  devise_for :installs
  devise_for :users
  resources :articles # globaliza todas las rutas: get, post, delete, patch, put
  resources :comments
  # direccion de la pagina
  # get 'welcome/index' # debemos poner en la url welcome/index para que nos direccione a ella.
  root 'welcome#index' # nos direcciona directamente a la pagina.
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
