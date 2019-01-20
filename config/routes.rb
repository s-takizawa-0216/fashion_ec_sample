Rails.application.routes.draw do

  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations', omniauth_callbacks: "users/omniauth_callbacks"}

  devise_scope :user do
    get 'users/done_signup',  to: 'users/registrations#done_signup', as: :user_resistration_done_signup
    get  'signup/facebook',   to: 'users/registrations#facebook',    as: :new_user_facebook
    get  'signup/google',     to: 'users/registrations#google',      as: :new_user_google
  end

  root "items#index"


  resources :items, only: [:new, :create ,:cordinate , :prefecture ,:show, :search_category] do
    get 'cordination' , to: 'items#cordination', on: :collection
    get 'prefecture' , to: 'items#prefecture' , on: :collection
    get 'search_category' , to: 'items#search_category' , on: :collection
    get 'ranking' , to:'items#ranking' , on: :collection
  end

  resources :users, only: [:new, :create_info, :show, :edit, :update_info, :email, :update_email, :shipping, :shipping_new, :shipping_edit, :shipping_update] do
    post  'create_info',   to: 'users#create_info',   as: :create_info, on: :collection
    patch 'update_info',   to: 'users#update_info',   as: :update_info, on: :collection
    get   'email',         to: 'users#email',         as: :email
    patch 'update_email',  to: 'users#update_email',  as: :update_email
    get   'shipping',      to: 'users#shipping',      as: :shipping, on: :collection
    post  'shipping_new',  to: 'users#shipping_new',  as: :shipping_new, on: :collection
    get  'shipping_edit',  to: 'users#shipping_edit',  as: :shipping_edit, on: :collection
    patch  'shipping_update',  to: 'users#shipping_update',  as: :shipping_update, on: :collection
  end

  resources :trades, only: [:index, :plus_count, :minus_count, :erace_item, :return_to_cart, :arigato_update, :order, :add_user_info, :confirmation, :done_transaction, :create, :prefecture, :search_prefecture] do
    post  'plus_count/:trade_id',     to: 'trades#plus_count',                as: :plus_count
    post  'minus_count/:trade_id',    to: 'trades#minus_count',               as: :minus_count
    post  'erace_item/:trade_id',     to: 'trades#erace_item',                as: :erace_item
    post  'return_to_cart/:trade_id', to: 'trades#return_to_cart',            as: :return_to_cart
    get   'arigato_update',           to: 'trades#arigato_update',            as: :arigato_update, on: :collection
    get   'order',                    to: 'trades#order',                     as: :order, on: :collection
    post  'add_user_info',            to: 'trades#add_user_info',             as: :add_user_info, on: :collection
    get   'confirmation',             to: 'trades#confirmation',              as: :confirmation, on: :collection
    post  'done_transaction',         to: 'trades#done_transaction',          as: :done_transaction, on: :collection
    get   'prefecture',               to: 'trades#prefecture',                as: :prefecture, on: :collection
    get   'search_prefecture',        to: 'trades#search_prefecture',         as: :search_prefecture, on: :collection
  end

  resources :stocks, except: [:show] do
    put :sort
  end

  resources :shops, only: [:new, :create]

  resources :favorites , only: [:destroy ,:favorite] do
    get 'favorite' , to: 'favorites#favorite' , on: :collection
    post 'favorite' , to: 'favorites#create' , on: :collection
  end
end
