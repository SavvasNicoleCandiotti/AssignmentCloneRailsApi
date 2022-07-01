Rails.application.routes.draw do
  resources :course_programs
  resources :programs
  resources :courses
  resources :course_assignments
  resources :assignments
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
