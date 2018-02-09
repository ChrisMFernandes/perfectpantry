class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def show
		@recipes = Recipe.find(params[:id])
		@ingredients = RecipeIngredient.where(recipe_id: params[:id])
	end

	def new
		@recipes = Recipe.new
		4.times { @recipes.ingredients.build }
	end

	def create
		@recipes = Recipe.new(recipe_params)

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
		@recipes = Recipe.find_by(id: params[:id])
	end

	def update
		@recipes = Recipe.find(params[:id])
		@recipes.update(recipe_params)
		redirect_to recipes_path
	end

	def destroy
		@recipes = Recipe.find(params[:id])
		@recipes.destroy
		redirect_to recipes_path
	end

	def search
		Recipe.reindex
		search = params[:term].present? ? params[:term] : nil
		@recipes = if search
			Recipe.search(search, fields: [:name])
		else
			Recipe.all
		end
	end

end

	def favorite
	    type = params[:type]
	    if type == "favorite"
	      current_user.favorites << @recipe
	      redirect_to :back, notice: 'You favorited #{@recipe.name}'

	    elsif type == "unfavorite"
	      current_user.favorites.delete(@recipe)
	      redirect_to :back, notice: 'Unfavorited #{@recipe.name}'

	    else
	      redirect_to :back, notice: 'Nothing happened.'
	    end
	end

private

	def recipe_params
		params.require(:recipe).permit(:name, :directions, :difficulty, :image_url, :servings, ingredients_attributes: Ingredient.attribute_names.map(&:to_sym).push(:_destroy))
	end

