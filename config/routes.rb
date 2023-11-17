Rails.application.routes.draw do

 resources :lists do
  resources :bookmarks, only: [:new, :create]
 end

#  get "/lists", to: "lists#index"
#  get "/lists", to: "Lists/42"
#  get "/lists", to: "lists/new"
#  post "lists",
end
