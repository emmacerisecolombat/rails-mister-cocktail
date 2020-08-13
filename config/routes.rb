Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  get 'cocktails/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

# # 1. COCKTAILS ROUTER
#   # A user can see the list of cocktails
#     GET "/cocktails", to: "coktails#index"
#   # A user can see the details of a given cocktail, with the dose needed for each ingredient
#     GET "/cocktails/:id", to: "cocktails#show"
#   # A user can create a new cocktail
#     GET "/cocktails/new", to: "cocktails#new"
#     POST "/cocktails", to: "cocktails#create"
  resources :cocktails, only: [:index, :show, :new, :create] do
# # 2. DOSES ROUTER
#   # A user can add a new dose (ingredient/description pair) to
#     an existing cocktail
      # GET "/cocktails/:id/doses/new", to: 'doses#new'
      # POST "/cocktails/:id/doses", to: 'doses#create'
#   # A user can delete a dose that belongs to an existing cocktail.
#     How can we make a delete link again?
      # DELETE "/cocktails/:id/doses", to:'doses#destroy'
# ---------------------------------------------------------------
# BE CAREFUL !! WE DO NOT NEED A CONTROLLER FOR INGREDIENTS !!
# ---------------------------------------------------------------
    resources :doses, only: [:new, :create, :destroy]
  end
end
