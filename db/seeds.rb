Recipe.create(
  title: "Peanut Butter Breakfast Shake",
  api_id: 612235,
  time_for_cooking: 45,
  servings: 1,
  instructions: "Place all ingredients in a blender and blend until smooth.Serve immediately.",
  image_link: "https://spoonacular.com/recipeImages/612235-556x370.jpg",  
  original_source: "http://www.realmomnutrition.com/2014/09/16/peanut-butter-breakfast-shake/"
  )
Recipe.create(
  title: "Hawaiian Grilled Cheese",
  api_id: 646368,
  time_for_cooking: 45,
  servings: 4,
  instructions: "Heat 2 tbsp of butter in a small pan over medium heat.\nAdd pineapple and brown sugar and saut until golden turning once - about 3 minutes per side.\nRemove from heat and set aside.\nAssemble sandwiches by placing dividing cheese amongst four slices of bread.\nNext stack some ham followed by a roughly three slices of pineapple and top with a few jalapeno slices.\nClose the sandwich with another slice of bread.\nIn a large pan heat the rest of the butter and olive oil over medium heat.\nAdd sandwiches to the pan and fry until golden brown - about 3 minutes per side.\nSlide onto a plate and slice diagonally.\nServe immediately with a bowl of piping hot soup.",
  image_link: "https://spoonacular.com/recipeImages/646368-556x370.png",
  original_source: "https://www.foodista.com/recipe/6SP7DK25/hawaiian-grilled-cheese"
  )
Recipe.create(
  title: "Beef Rib Roast and Yorkshire Pudding from the Grill",
  api_id: 96500,
  time_for_cooking: 45,
  servings: 7,
  instructions: "Rinse beef and pat dry. Coat all over with garlic-herb oil. Prepare barbecue for indirect heat (see below). When barbecue is medium-hot (you can hold your hand at grill level only 3 to 4 seconds), set an 8-inch square foil pan in center of firegrate or directly on heat source in gas barbecue (see notes above); set grill in place. Set roast, bones down, on grill over drip pan. Cover barbecue; open vents for charcoal. Cook for 45 minutes. Meanwhile, in a blender, whirl milk, flour, eggs, and 3/4 teaspoon salt until batter is smooth. Transfer roast to a platter. Protecting your hands, lift grill off and remove drip pan. Pour drippings through a fine strainer into a bowl. If using a charcoal grill, return 1 tablespoon drippings to pan; discard remainder. Return pan to firegrate and pour batter into pan. Replace grill, set roast back over pan, cover barbecue, and cook until medium-rare (135 in center of thickest part), 30 to 50 minutes longer, or until done to your taste Cook pudding until well browned, 40 to 50 minutes. If using a gas grill, return 3 tablespoons drippings (adding melted butter, if needed, to make this amount) to pan and pour in batter. Quickly set another 8-inch square pan on heat source, replace grill, set roast over pan, cover barbecue, and cook until medium-rare (135 in center of thickest part), 30 to 50 minutes longer, or until done to your taste. Meanwhile, bake pudding in a 375 oven until well browned, 30 to 40 minutes. Transfer roast to a platter; let stand in a warm place for juices to settle, at least 10 minutes. If pudding is done before roast is ready to carve, close charcoal barbecue vents and leave pudding in barbecue to keep warm, or turn oven heat off and keep pudding warm in the oven. Scoop pudding in large portions from pan and place around roast. Garnish with watercress. Carve roast and serve with pudding. Season to taste with salt and pepper. To prepare grill for indirect heat: If using charcoal briquets, mound and ignite 60 briquets on the firegrate of a barbecue with a lid. When the briquets are hot, after 15 to 20 minutes, push equal amounts to opposite sides of the firegrate. Add 5 more briquets to each mound of coals now and every 30 minutes while cooking. Set a drip pan on the firegrate between the coals. Set the grill in place. If using a gas barbecue, turn all the burners to high, close the lid, and heat for 10 minutes. Then adjust the burners for indirect cooking (heat on opposite sides of grill, not down center under food), and keep on high unless recipe specifies otherwise.",
  image_link: "https://spoonacular.com/recipeImages/96500-556x370.jpg",
  original_source: "http://www.myrecipes.com/recipe/beef-rib-roast-yorkshire-pudding-from-grill-10000000600593/"
  )

  RecipeStep.create(recipe_id: 1, number: 1, description: "Place all ingredients in a blender and blend until smooth.")
  RecipeStep.create(recipe_id: 1, number: 2, description: "Serve immediately.")

  RecipeStep.create(recipe_id: 2, number: 1, description: "Heat 2 tbsp of butter in a small pan over medium heat.")
  RecipeStep.create(recipe_id: 2, number: 2, description: "Add pineapple and brown sugar and saut until golden turning once - about 3 minutes per side.")
  RecipeStep.create(recipe_id: 2, number: 3, description: "Remove from heat and set aside.")
  RecipeStep.create(recipe_id: 2, number: 4, description: "Assemble sandwiches by placing dividing cheese amongst four slices of bread.")
  RecipeStep.create(recipe_id: 2, number: 5, description: "Next stack some ham followed by a roughly three slices of pineapple and top with a few jalapeno slices.")
  RecipeStep.create(recipe_id: 2, number: 6, description: "Close the sandwich with another slice of bread.")
  RecipeStep.create(recipe_id: 2, number: 7, description: "In a large pan heat the rest of the butter and olive oil over medium heat.")
  RecipeStep.create(recipe_id: 2, number: 8, description: "Add sandwiches to the pan and fry until golden brown - about 3 minutes per side.")
  RecipeStep.create(recipe_id: 2, number: 9, description: "Slide onto a plate and slice diagonally.")
  RecipeStep.create(recipe_id: 2, number: 10, description: "Serve immediately with a bowl of piping hot soup.")

  RecipeStep.create(recipe_id: 3, number: 1, description: "Rinse beef and pat dry. Coat all over with garlic-herb oil.")
  RecipeStep.create(recipe_id: 3, number: 2, description: "Prepare barbecue for indirect heat (see below). When barbecue is medium-hot (you can hold your hand at grill level only 3 to 4 seconds), set an 8-inch square foil pan in center of firegrate or directly on heat source in gas barbecue (see notes above); set grill in place. Set roast, bones down, on grill over drip pan. Cover barbecue; open vents for charcoal. Cook for 45 minutes.")
  RecipeStep.create(recipe_id: 3, number: 3, description: "Meanwhile, in a blender, whirl milk, flour, eggs, and 3/4 teaspoon salt until batter is smooth.")
  RecipeStep.create(recipe_id: 3, number: 4, description: "Transfer roast to a platter. Protecting your hands, lift grill off and remove drip pan.")
  RecipeStep.create(recipe_id: 3, number: 5, description: "Pour drippings through a fine strainer into a bowl.")
  RecipeStep.create(recipe_id: 3, number: 6, description: "If using a charcoal grill, return 1 tablespoon drippings to pan; discard remainder. Return pan to firegrate and pour batter into pan. Replace grill, set roast back over pan, cover barbecue, and cook until medium-rare (135 in center of thickest part), 30 to 50 minutes longer, or until done to your taste Cook pudding until well browned, 40 to 50 minutes.")
  RecipeStep.create(recipe_id: 3, number: 7, description: "If using a gas grill, return 3 tablespoons drippings (adding melted butter, if needed, to make this amount) to pan and pour in batter. Quickly set another 8-inch square pan on heat source, replace grill, set roast over pan, cover barbecue, and cook until medium-rare (135 in center of thickest part), 30 to 50 minutes longer, or until done to your taste. Meanwhile, bake pudding in a 375 oven until well browned, 30 to 40 minutes.")
  RecipeStep.create(recipe_id: 3, number: 8, description: "Transfer roast to a platter; let stand in a warm place for juices to settle, at least 10 minutes. If pudding is done before roast is ready to carve, close charcoal barbecue vents and leave pudding in barbecue to keep warm, or turn oven heat off and keep pudding warm in the oven.")
  RecipeStep.create(recipe_id: 3, number: 9, description: "Scoop pudding in large portions from pan and place around roast.")
  RecipeStep.create(recipe_id: 3, number: 10, description: "Garnish with watercress. Carve roast and serve with pudding. Season to taste with salt and pepper.")