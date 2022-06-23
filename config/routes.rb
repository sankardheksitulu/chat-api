Rails.application.routes.draw do
  resources :user_profiles
  namespace :api do
    namespace :v1 do
      resources :message_replies
      resources :messages
      resources :channel_members
      resources :channels
    end
  end
  devise_for :users,
             controllers: {
                 sessions: 'users/sessions',
                 registrations: 'users/registrations'
             }
  match '/users/list',   to: 'users#index',   via: 'get'
end
