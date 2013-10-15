LebowskiApi::Application.routes.draw do
  namespace :api do
    resources :quotes, only: [:show]
    get 'random', to: 'quotes#random'
    resources :lines, only: [:show]
    get 'lines/random',  to: 'lines#random'
    get 'search',        to: 'search#show'
  end

  root to: 'application#redirect'
  get "/404" => "errors#not_found"
  get "/500" => "errors#exception"
end
