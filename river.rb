
class River

  attr_reader :name
  attr_writer :name

  def initialize(name, fishes)
    @name = name
    @fishes = fishes
  end

  def fish_count()
    return @fishes.size()
  end

end
