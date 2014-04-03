class IngredientsController < ApplicationController
  def create
    @recipe = Recipe.find_by(:slug_name => params[:slug_name])
    @ingredient = @recipe.ingredients.new(params[:ingredient])
    if @ingredient.save
      redirect_to("/recipes/#{@recipe.slug_name}/edit")
    else
      redirect_to("/recipes/#{@recipe.slug_name}/edit")
    end
  end

  def edit
    @recipe = Recipe.find_by(:slug_name => params[:slug_name])
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @recipe = Recipe.find_by(:slug_name => params[:slug_name])
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update(params[:ingredient])
    redirect_to("/recipes/#{@recipe.slug_name}/edit")
  end

  def destroy
    @recipe = Recipe.find_by(:slug_name => params[:slug_name])
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
    redirect_to("/recipes/#{@recipe.slug_name}/edit")
  end
end
