Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # read all
  get '/tasks', to: 'tasks#index'
  # create
  # Step 1: Afficher la form a l'utilisateur avec methode get.
  get 'tasks/new', to: 'tasks#new'
  # #reall one
  get '/tasks/:id', to: 'tasks#show', as: 'task'
  # create
  # Step 2: Recuperer les infos avec la methode Post.
  post 'tasks', to: 'tasks#create'
  # # update
  get 'tasks/:id/edit', to: 'tasks#edit'
  # post
  patch 'tasks/:id', to: 'tasks#update'
  # delete
  # post
end
