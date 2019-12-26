Rails.application.routes.draw do
  root 'books#home', as: 'home'
  get 'books/help', as: 'help'
  get 'books/bag', as: 'bag'
  get 'books/reg', as: 'reg'
  get 'books/god', as: 'god'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
