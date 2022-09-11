Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
 
  post "users/create", to: "api/v1/users#create"

  post "education/create", to: "api/v1/education#create"

  get "users/show", to: "api/v1/users#show"

  get "education/show", to: "api/v1/education#show"


end