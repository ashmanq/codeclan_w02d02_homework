
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

  def add_fish_to_stomach(fish)
    @stomach.push(fish)
  end

  def remove_fish_from_stomach()
    # We remove the first fish in the stomach array
    # as fishes will be digested in order they were
    # eaten
    @stomach.shift()
  end

  def roar()
    return "Roar!!!"
  end

end
