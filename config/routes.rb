Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations'}


  devise_scope :user do
    get 'users/done_signup',  to: 'users/registrations#done_signup', as: :user_resistration_done_signup
  end

  root "items#index"
end

