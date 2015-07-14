Rails.application.routes.draw do
  resources :questions do
    member do
      get :upvote1
      post :upvote1
      get :upvote2
      post :upvote2
    end
  end
end
