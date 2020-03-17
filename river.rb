
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

  def remove_fish(fish)
    @fishes.delete(fish)
  end

  def add_fish(fish)
    @fishes.push(fish)
  end

  def bear_takes_fish(bear, fish)
    @fishes.delete(fish)
    bear.add_fish_to_stomach(fish)    
  end



end
