require("minitest/autorun")
require('minitest/reporters')
require_relative("../bear")
require_relative("../fish")
require_relative("../river")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new



class RiverTest < MiniTest::Test

  # Setup test with a river, bear and three fish objects
  def setup()
    @bear = Bear.new("Winnie", "Honey")

    @fish_1 = Fish.new("Flounder")
    @fish_2 = Fish.new("Spongebob")
    @fish_3 = Fish.new("Dory")
    @fish_4 = Fish.new("Jaws")

    @fishes = [@fish_1, @fish_2, @fish_3]

    @river = River.new("Amazon", @fishes)
  end

  # Testing the getters for river object
  def test_get_river_name()
    assert_equal("Amazon", @river.name())
  end

  # Testing the setters for river object
  def test_set_river_name()
    assert_equal("The Nile", @river.name = "The Nile")
  end

  def test_remove_fish_from_river()
    @river.remove_fish(@fish_2)
    assert_equal(2, @river.fish_count())
  end

  def test_add_fish_to_river()
    @river.add_fish(@fish_4)
    assert_equal(4, @river.fish_count())
  end

  def test_bear_takes_fish_from_river()
    @river.bear_takes_fish(@bear, @fish_2)
    assert_equal(2, @river.fish_count())
    assert_equal(1, @bear.stomach_content)
  end

  #------------Extensions-----------------
  def test_count_fishes_in_river()
    assert_equal(3, @river.fish_count())
  end

end
