Rails.application.routes.draw do
  resources :renseignements 
 get "welcome/home", to: "welcome#home"

 get 'welcome/services', to: "welcome#services"

 get 'welcome/contact', to: "welcome#contact"

 get 'welcome/connexion', to: 'welcome#connexion'

 get 'welcome/inscription', to: 'welcome#inscription'

 get 'welcome/rendezvous', to: 'welcome#rendezvous'

 get 'welcome/recapitulatif', to: 'welcome#recapitulatif'
end
