Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks"}

  devise_scope :user do
    get 'users/done_signup',  to: 'users/registrations#done_signup', as: :user_resistration_done_signup
    get  'signup/facebook',   to: 'users/registrations#facebook',    as: :new_user_facebook
    get  'signup/google',     to: 'users/registrations#google',      as: :new_user_google
  end

  root "items#index"
  resources :items, only: [:new, :create, :show]

  resources :users, only: [:show, :edit, :email, :password_edit, :address] do
    get 'email', to: 'users#email', as: :email
    get 'password_edit', to: 'users#password_edit', as: :password_edit
    get 'address', to: 'users#address', as: :address
  end

  resources :trades, only: [:index, :plus_count, :minus_count, :destroy_item, :order, :confirmation, :done_transaction] do
    post  'plus_count/:trade_id',     to: 'trades#plus_count',      as: :plus_count
    post  'minus_count/:trade_id',     to: 'trades#minus_count',      as: :minus_count
    post  'erace_item/:trade_id',     to: 'trades#erace_item',      as: :erace_item
    post  'return_to_cart/:trade_id',     to: 'trades#return_to_cart',      as: :return_to_cart
    get   'order',            to: 'trades#order',             as: :order, on: :collection
    post  'add_userinfo',     to: 'trades#add_userinfo',      as: :user_info, on: :collection
    get   'confirmation',     to: 'trades#confirmation',      as: :confirmation
    get   'done_transaction', to: 'trades#done_transaction',  as: :done_transaction
  end
  resources :stocks, only: [:index]
end
