class Recipe
  attr_reader :name, :ingredients_required, :ingredients
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
    @ingredients = []
  end

  def add_ingredient(ingredient, amount)
    @ingredients << ingredient
    @ingredients_required[ingredient] += amount
  end

  def total_calories
    @ingredients.sum do |ingredient|
      (ingredient.calories) * @ingredients_required[ingredient]
    end
  end
end