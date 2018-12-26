Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    get 'users/done_signup',  to: 'users/registrations#done_signup', as: :user_resistration_done_signup
  end

  root "items#index"
end

