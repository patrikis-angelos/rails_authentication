Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations'}
  root "posts#index"
  resources :posts, only: %i[new create index]
end
