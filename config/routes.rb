Rails.application.routes.draw do
  resources :tableaus
  resources :infos
 get "welcome/home", to: "welcome#home"

 get 'welcome/services', to: "welcome#services"

 get 'welcome/contact', to: "welcome#contact"
 post '/create_tableau' => 'application#create_tableau'
end
