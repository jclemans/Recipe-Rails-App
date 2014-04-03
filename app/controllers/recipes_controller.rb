class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render('recipes/index.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    params[:recipe][:slug_name] = params[:recipe][:name].parameterize
    @recipe = Recipe.new(params[:recipe])
    if @recipe.save
      redirect_to('/recipes/')
    else
      render('recipes/index.html.erb')
    end
  end

  def show
    @recipe = Recipe.find_by(:slug_name => params[:slug_name])
    render('recipes/show.html.erb')
  end

  def edit
    @recipe = Recipe.find_by(:slug_name => params[:slug_name])
    render('recipes/edit.html.erb')
  end

  def update
    @recipe = Recipe.find_by(:slug_name => params[:slug_name])
    params[:recipe][:slug_name] = params[:recipe][:name].parameterize
    @recipe.update(params[:recipe])
    redirect_to("/recipes/#{@recipe.slug_name}")
  end

  def destroy
    @recipe = Recipe.find_by(:slug_name => params[:slug_name])
    @recipe.destroy
    redirect_to('/recipes')
  end
end
