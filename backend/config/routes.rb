Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :posts
  patch "posts/:id/accept", to: "posts#accept", as: :post_accept
  patch "posts/:id/reject", to: "posts#reject", as: :post_reject

  scope :public do
    resources :posts, only: %i[index create], controller: "public/posts"
    get :categories, to: "public/categories#index"
  end
end
