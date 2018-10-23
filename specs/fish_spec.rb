require('minitest/autorun')
require('minitest/rg')
require_relative('../fish')

class TestFish < MiniTest::Test

  def setup()
    @trout = Fish.new("Trout")
    @salmon = Fish.new("Salmon")
    @pike = Fish.new("Pike")
  end


  def test_can_create_fish
    assert_equal(Fish, @trout.class)
  end

  def test_person_name
    assert_equal("Salmon", @salmon.name)
  end



end
