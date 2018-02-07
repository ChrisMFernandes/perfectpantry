class Recipe < ApplicationRecord
	searchkick word_middle: [:name]

	def search_data
		{
			name: name
		}
	end

	validates :name, uniqueness: true, presence: true
	validates :directions, presence: true
	validates_numericality_of :difficulty, :only_integer => true, length: {minimum: 1, maximum: 10}, allow_blank: true



	has_many :favorites
  	has_many :users, through: :favorites
  	has_many :recipe_ingredients
  	has_many :ingredients, through: :recipe_ingredients, :dependent => :destroy
  	accepts_nested_attributes_for :ingredients
end
