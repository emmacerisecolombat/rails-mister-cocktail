Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# # 1. COCKTAIL ROUTER
#   # A user can see the list of cocktails
#     GET "/cocktails", to: "coktails#index"
#   # A user can see the details of a given cocktail, with the dose needed for each ingredient
#     GET "/cocktails/:id", to: "cocktails#show"
#   # A user can create a new cocktail
#     GET "/cocktails/new", to: "cocktails#new"
#     POST "/cocktails", to: "cocktails#create"
  resources :cocktails, only: [:index, :show, :new, :create]

end
