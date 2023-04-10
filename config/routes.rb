Rails.application.routes.draw do
  resources :quiz_responses
  resources :quiz_questions
  resources :quizzes
  resources :questions
  resources :question_banks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#home"
end
