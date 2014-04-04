Recipes::Application.routes.draw do
  match('recipes', {:via => :get, :to => 'recipes#index'})
  match('recipes/new', {:via => :get, :to => 'recipes#new'})
  match('recipes/', {:via => :post, :to => 'recipes#create'})
  match('recipes/:slug_name', {:via => :get, :to => 'recipes#show'})
  match('recipes/:slug_name/edit', {:via => :get, :to => 'recipes#edit'})
  match('recipes/:slug_name', {:via => :delete, :to => 'recipes#destroy'})
  match('recipes/:slug_name', {:via => [:patch, :put], :to => 'recipes#update'})

  match('recipes/:slug_name/ingredients', {:via => :post, :to => 'ingredients#create'})
  match('recipes/:slug_name/ingredients/:id', {:via => :get, :to => 'ingredients#edit'})
  match('recipes/:slug_name/ingredients/:id', {:via => [:patch, :put], :to => 'ingredients#update'})
  match('recipes/:slug_name/ingredients/:id', {:via => :delete, :to => 'ingredients#destroy'})

end
