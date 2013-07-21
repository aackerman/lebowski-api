LebowskiApi::Application.routes.draw do
  namespace :api do
    get 'quotes/random', to: 'quotes#random'
    get 'quotes/:id', to: 'quotes#show', as: 'quote'
  end

  root to: 'application#redirect'
  match "/404" => "errors#not_found"
  match "/500" => "errors#exception"
end
