Event::Application.routes.draw do
  get "home/index"

  resources :isfit_events do
    get :on_date, on: :collection
  end
  root :to => 'home#index'
end
