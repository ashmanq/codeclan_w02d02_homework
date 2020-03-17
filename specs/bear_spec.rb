require("minitest/autorun")
require('minitest/reporters')
require_relative("../bear")
require_relative("../fish")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new



class BearTest < MiniTest::Test
  # A bear and fish object are created to use in the test
  def setup()
    @bear = Bear.new("Baloo", "Grizzly")
    @fish_1 = Fish.new("Nemo")
  end

  # Testing the getters for bear name and bear type
  def test_get_bear_name()
    name = @bear.name()
    assert_equal("Baloo", name)
  end

  def test_get_bear_type()
    type = @bear.type()
    assert_equal("Grizzly", type)
  end

  # Testing the setters
  # I assume that you would never need to change the bear type
  # once it has been created hence there is no setter for bear
  # type.
  def test_set_bear_name()
    @bear.name = "Yogi"
    assert_equal("Yogi", @bear.name)
  end

  # Testing that the bear object starts with an empty stomach
  def test_bear_stomach_starts_empty
    assert_equal(0, @bear.stomach_content())
  end

  # Test for when a bear eats a fish from the river
  def test_bear_gets_fish_from_river()
    @bear.add_fish_to_stomach(@fish)
    assert_equal(1, @bear.stomach_content)
  end

  #Test when a fish is gone from bears stomach (digested)
  def test_bear_digests_fish_in_stomach()
    @bear.remove_fish_from_stomach()
    assert_equal(0, @bear.stomach_content)
  end
end
