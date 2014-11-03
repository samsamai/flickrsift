Rails.application.routes.draw do
  root to: 'searches#show'
  match '/search', to: "searches#show", via: 'get'
end
