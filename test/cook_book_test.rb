require 'minitest/autorun'
require 'minitest/pride'
require './lib/cook_book'
require './lib/recipe'

class CookBookTest < Minitest::Test
  def test_it_exists
    cookbook = CookBook.new

    assert_instance_of CookBook, cookbook
  end

  def test_it_has_readable_attributes
    cookbook = CookBook.new

    assert_equal [], cookbook.recipes
  end

  def test_it_can_add_recipe
    cookbook = CookBook.new
    recipe1 = Recipe.new("Mac and Cheese")
    recipe2 = Recipe.new("Cheese Burger")
    cookbook.add_recipe(recipe1)
    cookbook.add_recipe(recipe2)

    assert_equal [recipe1, recipe2], cookbook.recipes
  end
end
