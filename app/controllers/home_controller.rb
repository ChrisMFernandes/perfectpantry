class HomeController < ApplicationController
	def index
		@recipes = Recipe.all
		@ingredients = Ingredient.all
	end

	def knives
	end

	def spices
	end

	def steak
	end
end
