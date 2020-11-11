Rails.application.routes.draw do
  resources :towits do
   collection do
   post :confirm
  #get 'towits/index'
  #get 'towits/new'
  #get 'towits/edit'
  #get 'towits/create'
  #get '/towits', to: 'towits#index'
  #post '/towits', to: 'towits#create'
  #post '/towits', to: 'towits#edit'
  #post '/towits', to: 'towits#new'
end
end
end

  #resources :blogs do
   #collection do
   #end
    # post :confirm
 #get 'blogs/index'
 #get 'blogs/new'
 #get 'blogs/edit'
 #get 'blogs/create'
 #get '/blogs', to: 'blogs#index'
 #post '/blogs', to: 'blogs#create'
 #post '/blogs', to: 'blogs#edit'
 #post '/blogs', to: 'blogs#new'
