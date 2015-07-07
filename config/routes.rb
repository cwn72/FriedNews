Rails.application.routes.draw do
  get ':year/:month/:day' => 'headlines#show'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'static_pages#home'
end
