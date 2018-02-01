# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "fakeartist@fake.com", password: "testing1")
Recipe.create(name: "Root Beer Pulled Pork Sandwiches", directions: "1. Place the pork in a slow cooker and pour the can of root beer over the meat. Cover and cook on low for 6 hours or until pork shreds easily with a fork.
2. After pork has cooked, drain and discard the root beer. Shred the pork and place it back in the slow cooker. Pour the barbecue sauce over the pork and stir to combine. Serve immediately or keep warm in slow cooker until ready to serve. Serve on hamburger buns.
", difficulty: 2, servings: 8, image_url: "http://4.bp.blogspot.com/-plkksF0qN0A/Td6V5wXmW3I/AAAAAAAAG6s/ctar83hZ7Zk/s640/pulled-pork-thumb.JPG")
Ingredient.create(name: "1 (2 pound) pork shoulder or butt (tenderloin can be used for a leaner option)")
Ingredient.create(name: "1 (12 ounce) can of root beer")
Ingredient.create(name: "1 (18 ounce) bottle of barbacue sauce")
Ingredient.create(name: "8 hamburger buns")
RecipeIngredient.create(ingredient_id: 1, recipe_id: 1)
RecipeIngredient.create(ingredient_id: 2, recipe_id: 1)
RecipeIngredient.create(ingredient_id: 3, recipe_id: 1)
RecipeIngredient.create(ingredient_id: 4, recipe_id: 1)
Favorite.create(user_id: 1, recipe_id: 1)
Recipe.create(name: "Nutella Crescent Rolls", directions: "1. Preheat oven to 350 degrees F, and line a baking sheet with parchment paper. Unroll the crescent roll dough. Spread a thin layer of nutella on each piece of dough (stopping about an inch or two before the end of the skinnier side). Roll the crescent rolls up. After they’re rolled up, make sure you roll them back and forth a couple of times to seal the edges of the dough. 2. Bake in the oven for 12-15 minutes or until the tops are golden brown. Let cool for about 5-10 minutes and then dust with some powdered sugar. The rolls can be served immediately or last a couple of days if tightly wrapped.
", difficulty: 1, servings: 4, image_url: "http://www.lifetasteslikefood.com/wp-content/uploads/2012/02/IMG_9417-1024x701.jpg")
Ingredient.create(name: "1 package of Pilsbury Crescent Rolls (8 count)")
Ingredient.create(name: "Nutella")
Ingredient.create(name: "Powdered sugar")
RecipeIngredient.create(ingredient_id: 5, recipe_id: 2)
RecipeIngredient.create(ingredient_id: 6, recipe_id: 2)
RecipeIngredient.create(ingredient_id: 7, recipe_id: 2)
Favorite.create(user_id: 1, recipe_id: 2)
