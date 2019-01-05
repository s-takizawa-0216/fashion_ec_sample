Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks"}

  devise_scope :user do
    get 'users/done_signup',  to: 'users/registrations#done_signup', as: :user_resistration_done_signup
    get  'signup/facebook',   to: 'users/registrations#facebook',    as: :new_user_facebook
    get  'signup/google',     to: 'users/registrations#google',      as: :new_user_google
  end

  root "items#index"

  resources :items, only: [:new, :create]

  resources :users, only: [:show, :edit, :email, :password_edit, :address, :credit] do
    get 'email', to: 'users#email', as: :email
    get 'password_edit', to: 'users#password_edit', as: :password_edit
    get 'address', to: 'users#address', as: :address
    get 'credit', to: 'users#credit', as: :credit
  end

  resources :trades, only: [:index, :order, :confirmation, :done_transaction] do
    get   'order',       to: 'trades#order',      as: :order
    get   'confirmation',       to: 'trades#confirmation',      as: :confirmation
    get   'done_transaction',       to: 'trades#done_transaction',      as: :done_transaction
  end

end

