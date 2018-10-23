require('minitest/autorun')
require('minitest/rg')
require_relative('../bear')
require_relative('../fish')
require_relative('../river')

class TestBear < MiniTest::Test

  def setup()
    @fishfood1 = Fish.new("Goldfish")
    @fishfood2 = Fish.new("Pufferfish")
    @fishfood3 = Fish.new("Swordfish")

    @Pooh = Bear.new("Pooh", "Yellow with red jumper")
  end


  def test_can_create_bear
    assert_equal(Bear, @Pooh.class)
  end

  def test_bear_has_a_name
    expected = "Pooh"
    actual = @Pooh.name
    assert_equal(expected, actual)
  end

  def test_bear_has_a_type
    expected = "Yellow with red jumper"
    actual = @Pooh.type
  end

  def test_number_of_fish_in_stomach
    expected = 0
    actual = @Pooh.food_count
    assert_equal(expected, actual)
  end

  def test_add_fish_to_stomach
    @Pooh.eat_fish(@fishfood1)
    assert_equal(1, @Pooh.food_count)
  end

  def test_add_multiple_fish_to_stomach
    @Pooh.eat_fish(@fishfood1)
    @Pooh.eat_fish(@fishfood2)
    assert_equal(2, @Pooh.food_count)
  end

  def test_add_fish_to_stomach_from_river
    @river1 = River.new("Amazon")
    @river1.add_to_river(@fishfood1)
    @river1.add_to_river(@fishfood2)
    @river1.add_to_river(@fishfood3)
    @Pooh.eat_fish(@fishfood1)
    @river1.remove_fish(@fishfood1)

    assert_equal(2, @river1.fish_count)
    assert_equal(1, @Pooh.food_count)
  end

#extension 1
  def test_bear_can_roar
    assert_equal("Roar", @Pooh.make_bear_roar)
  end

end
