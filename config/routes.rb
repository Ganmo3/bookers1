Rails.application.routes.draw do
  get 'books/new'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/show'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  get '/top' => 'homes#top'
  get 'books/:id' => 'books#show'
  #変更？
  patch 'books/:id' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
end
