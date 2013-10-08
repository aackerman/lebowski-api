LebowskiApi::Application.routes.draw do
  namespace :api do
    get 'quotes/random', to: 'quotes#random'
    get 'quotes/:id',    to: 'quotes#show',  as: 'quote'
    get 'lines/random',  to: 'lines#random'
    get 'lines/:id',     to: 'lines#show',   as: 'line'
    get 'search',        to: 'search#show'
  end

  root to: 'application#redirect'
  get "/404" => "errors#not_found"
  get "/500" => "errors#exception"
end
