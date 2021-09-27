Rails.application.routes.draw do
  resources :renseignements
  resources :information
 get "welcome/home", to: "welcome#home"

 get 'welcome/services', to: "welcome#services"

 get 'welcome/contact', to: "welcome#contact"

 
end
