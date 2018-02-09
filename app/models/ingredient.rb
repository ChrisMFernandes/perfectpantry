class Ingredient < ApplicationRecord
	searchkick word_middle: [:name]

	def search_data
		{
			name: name
		}
	end


	belongs_to :recipes, optional: true
	has_many :recipe_ingredients
	has_many :recipes, through: :recipe_ingredients
end
