LebowskiApi::Application.routes.draw do
  namespace :api do
    get 'script', to: 'script#show'
    get 'quotes/random', to: 'quotes#random'
    get 'quotes/search', to: 'quotes#search'
    resources :quotes, only: [:show]
    get 'lines/search',  to: 'lines#search'
    get 'lines/random',  to: 'lines#random'
    resources :lines, only: [:show]
    get 'search',        to: 'search#show'
  end

  root to: 'application#redirect'
  get "/404" => "errors#not_found"
  get "/500" => "errors#exception"
end
