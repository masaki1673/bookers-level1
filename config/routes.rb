Rails.application.routes.draw do
  # get 'books/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
   root to: 'homes#bookers-level1'
   #root to: 'home#booers-level1'
  # get 'books' => 'books#index'
  # post 'books' => 'books#create'
  # get 'books/:id/edit' => 'books#edit', as: 'edit_books'
  # patch 'books/:id' => 'books#update', as: 'update_books'
  # get 'books/:id' => 'books#show'
  resources :books
end