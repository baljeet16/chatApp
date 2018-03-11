Rails.application.routes.draw do
  get '/signup' => "sign_up#new"
  match '/signup' => "sign_up#create", via: :post

  get '/login' => "sign_in#login", as: 'login'

  get '/chatroom' => "chat_room#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #

end
