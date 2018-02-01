class CreateRecipes < ActiveRecord::Migration[5.1]
  def change
    create_table :recipes do |t|
    	t.string :name
    	t.text :directions
    	t.integer :difficulty
    	t.integer :servings
    	t.string :image_url

      t.timestamps
    end
  end
end
