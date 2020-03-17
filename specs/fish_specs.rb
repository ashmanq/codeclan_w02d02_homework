require("minitest/autorun")
require('minitest/reporters')
require_relative("../fish")
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new



class FishTest < MiniTest::Test

  def setup()
    @fish_1 = Fish.new("Harry")
  end

  def test_get_fish_name()
    name = @fish_1.name()
    assert_equal("Harry", name)
  end
end
