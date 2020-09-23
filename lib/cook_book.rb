require 'date'

class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def highest_calorie_meal
    @recipes.max_by do |recipe|
      recipe.total_calories
    end
  end

  def date
    Time.now.strftime("%m%d%y")
  end

  def summary_ingredients(ingredients,recipe)
    ingredients.reduce([]) do |summary_array, ingredient|
      summary_hash = {}
      summary_hash[:ingredient] = ingredient.name
      summary_hash[:amount] = "#{recipe.ingredients_required[ingredient]} #{ingredient.unit}"
      summary_array << summary_hash
      summary_array
    end
  end


  def summary
    @recipes.reduce([]) do |summ, recipe|
      recipe_hash = {}
      details_hash = {}
      details_hash[:ingredients] = summary_ingredients(recipe.ingredients, recipe)
      recipe_hash[:name] = recipe.name
      recipe_hash[:details] = details_hash
      summ << recipe_hash
      summ
    end
  end
end