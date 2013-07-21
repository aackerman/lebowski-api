LebowskiApi::Application.routes.draw do
  namespace :api do
    get 'quotes/random', to: 'quotes#random'
    get 'quotes/:id', to: 'quotes#show', as: 'quote'
  end

  root to: 'application#redirect'
  get "/404" => "errors#not_found"
  get "/500" => "errors#exception"
end
