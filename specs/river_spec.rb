require('minitest/autorun')
require('minitest/rg')
require_relative('../river')
# require_relative('../fish')
require_relative('../bear')
require_relative('../fish')


class TestRiver < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Pufferfish")
    @fish2 = Fish.new("Goldfish")

    @Amazon = River.new("Amazon")
  end


  def test_can_create_river
    assert_equal(River, @Amazon.class)
  end

  def test_river_has_a_name
    expected = "Amazon"
    actual = @Amazon.name
    assert_equal(expected, actual)
  end

  def test_river_has_no_fish
    expected = 0
    actual = @Amazon.fish_count 
    assert_equal(expected, actual)
  end

  def test_add_fish_to_river
    @Amazon.add_to_river(@fish1)
    assert_equal(1, @Amazon.fish_count)
  end


  def test_add_multiple_fish_to_river
    @Amazon.add_to_river(@fish1)
    @Amazon.add_to_river(@fish2)
    @Amazon.add_to_river(@fish3)
    assert_equal(3, @Amazon.fish_count)
  end

  def test_remove_fish_from_river
    @Amazon.add_to_river(@fish1)
    @Amazon.add_to_river(@fish2)
    @Amazon.remove_fish(@fish1)

    assert_equal(1, @Amazon.fish_count())
  end


  def test_empty_river
    @Amazon.add_to_river(@fish1)
    @Amazon.add_to_river(@fish2)

    @Amazon.empty_river

    assert_equal(0, @Amazon.fish_count)
  end



end
