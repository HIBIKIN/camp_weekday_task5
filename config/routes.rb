Rails.application.routes.draw do
  get 'fortunetelling/:date', to: 'fortunetellings#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
