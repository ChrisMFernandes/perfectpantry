class IngredientsController < ApplicationController

	def index
		@ingredients = Ingredient.all
	end

	def show
		@ingredients = Ingredient.find(params[:id])
	end

	def new
		@ingredients = Ingredient.new
	end

	def create
		@ingredients = Ingredient.new(name: params[:ingredient][:name])

  		respond_to do |format|
    		if @ingredients.save
      			format.html { redirect_to ingredients_path, notice: 'Ingredient was successfully created, yo!' }
      			format.json { render :index, status: :created, location: ingredients_path }
      			format.js
    		else
      			format.html { render :new }
      			format.json { render json: @ingredients.errors, status: :unprocessable_entity }
      			format.js
    		end
  		end
	end

	def edit
		@ingredients = Ingredient.find(params[:id])
	end

	def update
		@ingredients = Ingredient.find(params[:id])
		@ingredients.update(name: params[:ingredient][:name])
		redirect_to ingredients_path
	end

	def destroy
		@ingredients = Ingredient.find(params[:id])
		@ingredients.destroy
		redirect_to ingredients_path
	end

private

	def recipe_params
		params.require(:ingredient).permit(:name)
	end
end


