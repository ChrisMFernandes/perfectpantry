class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def show
		@recipes = Recipe.find(params[:id])
	end

	def new
		@recipes = Recipe.new
	end

	def create
		@recipes = Recipe.new(name: params[:recipe][:name], directions: params[:recipe][:directions], difficulty: params[:recipe][:difficulty], image_url: params[:recipe][:image_url])

  		respond_to do |format|
    		if @recipes.save
      			format.html { redirect_to recipes_path, notice: 'Recipe was successfully created, yo!' }
      			format.json { render :index, status: :created, location: recipes_path }
      			format.js
    		else
      			format.html { render :new }
      			format.json { render json: @recipes.errors, status: :unprocessable_entity }
      			format.js
    		end
  		end
	end

	def edit
		@recipes = Recipe.find(params[:id])
	end

	def update
		@recipes = Recipe.find(params[:id])
		@recipes.update(name: params[:recipe][:name], directions: params[:recipe][:directions], difficulty: params[:recipe][:difficulty], image_url: params[:recipe][:image_url])
		redirect_to recipes_path
	end

	def destroy
		@recipes = Recipe.find(params[:id])
		@recipes.destroy
		redirect_to recipes_path
	end

private

	def recipe_params
		params.require(:recipe).permit(:name, :directions, :difficulty, :image_url)
	end
end
