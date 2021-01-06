Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :articles, only: [:index, :show, :new, :create]

  # DYNAMIC ROUTE - :ID PARAMETER - ACCESSED by CONTROLLER - SAME AS + :edit
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article

  # DYNAMIC ROUTE - :ID PARAMTER - ACCESSED by CONTROLLER - SAME AS + :update
  patch 'articles/:id', to: 'articles#update'

end
