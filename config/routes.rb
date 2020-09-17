Rails.application.routes.draw do
  resources :scores
  resources :positions
  resources :magazines
  resources :enologists
  resources :wines
  resources :assemblies
  resources :strains
  root "wines#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
