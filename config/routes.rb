Rails.application.routes.draw do
  root 'static_pages#home'

  get '/about' => 'static_pages#about'
  get '/providers' => 'static_pages#providers'
  get '/procedures' => 'static_pages#procedures'
  get '/procedures/esi' => 'static_pages#esi'
  get '/contact' => 'static_pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
