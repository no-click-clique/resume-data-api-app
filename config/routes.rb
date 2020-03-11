Rails.application.routes.draw do
  namespace :api do
    get "/students" => "students#index"
    post "/students" => "students#create"
    get "/students/:id" => "students#show"
    patch "/students/:id" => "students#update"
    delete "/students/:id" => "students#destroy"

    post "/sessions" => "sessions#create"

    post "/experiences" => "experiences#create"
    get "/experiences/:id" => "experiences#show"
    patch "/experiences/:id" => "experiences#update"
    delete "/experiences/:id" => "experiences#destroy"

    post "/educations" => "educations#create"
    get "/educations/:id" => "educations#show"
    patch "/educations/:id" => "educations#update"
    delete "/educations/:id" => "educations#destroy"

    get "/skills" => "skills#index"

    post "/student_skills" => "student_skills#create"
    delete "/student_skills/:id" => "student_skills#destroy"

    post "/capstones" => "capstones#create"
    get "/capstones/:id" => "capstones#show"
    patch "/capstones/:id" => "capstones#update"
    delete "/capstones/:id" => "capstones#destroy"
  end
end
