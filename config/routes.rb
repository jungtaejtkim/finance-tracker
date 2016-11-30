Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "user/registrations" } #devise 의 regi 를 위해 컨트롤러 유저폴더의 regi 컨트롤러를 참조하라 
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show] #devise 로 애초에 깔아버렸으니 조심해서
  resources :friendships
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
  get 'search_friend', to: 'users#search'
  post 'add_friend', to: 'users#add_friend'
end
