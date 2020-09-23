require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'

class RecipeTest < Minitest::Test
  def test_it_exists
    recipe1 = Recipe.new(" ")

    assert_instance_of Recipe, recipe1
  end
end