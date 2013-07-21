LebowskiApi::Application.routes.draw do
  namespace :api do
    get 'quotes/random', to: 'quotes#random'
    get 'quotes/:id', to: 'quotes#show', as: 'quote'
  end
end
