Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: redirect("/admin")

  devise_for :users

  get '/saml/auth' => 'saml_idp#new'
  post '/saml/auth' => 'saml_idp#create'
end
