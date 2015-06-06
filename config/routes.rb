Rails.application.routes.draw do
  namespace :api do
    get 'script', to: 'script#show', defaults: {format: :json}
    get 'quotes/random', to: 'quotes#random', defaults: {format: :json}
    get 'quotes/search', to: 'quotes#search', defaults: {format: :json}
    resources :quotes, only: [:show], defaults: {format: :json}
    get 'lines/search',  to: 'lines#search', defaults: {format: :json}
    get 'lines/random',  to: 'lines#random', defaults: {format: :json}
    resources :lines, only: [:show], defaults: {format: :json}
    get 'search',        to: 'search#show', defaults: {format: :json}
  end

  root to: 'application#redirect'
  get '/404'  => 'errors#not_found'
  get '/500'  => 'errors#exception'
  get '*path' => 'errors#not_found'
end
