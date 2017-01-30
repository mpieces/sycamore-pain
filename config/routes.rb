Rails.application.routes.draw do
  get 'calendar/show'

  root 'static_pages#home'

  get '/about' => 'static_pages#about'
  get '/providers' => 'static_pages#providers'
  get '/procedures' => 'static_pages#procedures'
  get '/procedures/esi' => 'static_pages#esi'
  get '/contact' => 'static_pages#contact'

  resource :calendar, only: [:show], controller: :calendar
  root to: "calendar#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
