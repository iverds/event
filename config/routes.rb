Event::Application.routes.draw do
  get "home/index"
  resources :articles
  resources :isfit_events do
    get :on_date, on: :collection
  end
  root :to => 'home#index'
end
