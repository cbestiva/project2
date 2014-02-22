DatePlannerApp::Application.routes.draw do
  devise_for :users
  root to: "sites#index"

  get '/wingman', to: "sites#index"

  resources :intineraries 
  
end
