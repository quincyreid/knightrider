Knightrider::Application.routes.draw do

  root 'home#index'

  devise_for :users,
    :path_names => { :sign_in => 'login', :sign_out => 'logout'},
    :controllers => {
      :omniauth_callbacks => "users/omniauth_callbacks",
      :sessions => "sessions"
    }

  resources :robots

end
