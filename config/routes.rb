Rails.application.routes.draw do
  get 'scores/create'
  resources :questions
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'questions#index'
  post 'questions/:question_id/scores' => 'scores#create'
end
