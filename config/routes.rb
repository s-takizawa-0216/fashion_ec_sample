Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks"}

  devise_scope :user do
    get 'users/done_signup',  to: 'users/registrations#done_signup', as: :user_resistration_done_signup
    get  'signup/facebook',   to: 'users/registrations#facebook',    as: :new_user_facebook
    get  'signup/google',     to: 'users/registrations#google',      as: :new_user_google
  end

  root "items#index"




  resources :items, only: [:new, :create ,:cordinate , :prefecture ,:show] do
    get 'cordination' , to: 'items#cordination', on: :collection
    get 'prefecture' , to: 'items#prefecture' , on: :collection
  end


  resources :users, only: [:show, :edit, :email, :password_edit, :address] do
    get 'email', to: 'users#email', as: :email
    get 'password_edit', to: 'users#password_edit', as: :password_edit
    get 'address', to: 'users#address', as: :address
  end

  resources :trades, only: [:index, :order, :confirmation, :done_transaction] do
    get   'order',       to: 'trades#order',      as: :order
    get   'confirmation',       to: 'trades#confirmation',      as: :confirmation
    get   'done_transaction',       to: 'trades#done_transaction',      as: :done_transaction
  end
  resources :stocks, except: [:show]
  resources :shops, only: [:new, :create]
end
