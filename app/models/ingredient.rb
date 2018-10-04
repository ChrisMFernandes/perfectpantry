class Ingredient < ApplicationRecord
	belongs_to :recipes, optional: true
	has_many :recipe_ingredients
	has_many :recipes, through: :recipe_ingredients

	def self.search(term)
		if term
			where('name LIKE ?', "%#{term}%").order('id DESC')
		else
			order('id DESC')
		end
	end
end
