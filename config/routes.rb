Rails.application.routes.draw do
 
  devise_for :users
  
    root "home#index"
    get '/user/subcategory/:id', to: "home#subcategory"
    get '/user/products/:id', to: "home#product"
    get '/user/cart/:id',to:"home#cart"
    post '/addcart',to:"home#addcart"
    get '/profile',to:"home#profile"
  
  namespace :supplier do
    resources :products
    resources :category
  end
 
  namespace :admins do
    get 'order/index'
    resources :users
    resources :order
    resources :categorylists
    resources :subcategories
  end

get 'listitem/new'
get 'listitem/index'
post 'listitems' ,to: "listitem#create"
post 'listitems/:id/inc' ,to: "listitem#add_quantity", as: "listitem_inc"
post 'listitems/:id/dec' ,to: "listitem#reduce_quantity", as: "listitem_dec"
delete 'listitems/:id' ,to: "listitem#destroy",as:"listitem_rem"


get '/carts/' ,to: "cart#show", as: "cart"
delete '/carts/:id' ,to: "cart#destroy" ,as: "cart_destroy"
resources :carts
# resources :products
resources :order
 
end
