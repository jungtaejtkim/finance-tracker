Rails.application.routes.draw do

  devise_for :users, :controllers => { :registrations => "user/registrations" } #devise 의 regi 를 위해 컨트롤러 유저폴더의 regi 컨트롤러를 참조하라 
  resources :user_stocks, except: [:show, :edit, :update]
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio'
  get 'search_stocks', to: 'stocks#search'
  get 'my_friends', to: 'users#my_friends'
end
