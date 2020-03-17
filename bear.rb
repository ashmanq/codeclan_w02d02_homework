
class Bear

attr_reader :name, :type
attr_writer :name

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def stomach_content()
    return @stomach.size()
  end

  def bear_eats_fish_from_river(fish)
    @stomach.push(fish)
  end

end
