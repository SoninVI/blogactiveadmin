Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'homes#index'

  get 'post' => 'posts#index', as: 'posts'
  get 'post_new' => 'posts#new', as: 'post_new'
  post 'post' => 'posts#create', as: 'post'
  get 'post_show' => 'posts#show', as: 'posts_show'
  get 'post/:id' => 'posts#show', as: 'post_show'
  get 'post/:id/edit' => 'posts#edit', as: 'post_edit'
  patch 'post/:id/update' => 'posts#update', as: 'post_update'
  delete 'post/:id/delete' => 'posts#destroy', as: 'post_delete'
  # delete 'articles/' => 'articles#destroy_all', as: 'article_delete_all'

end
