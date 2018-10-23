class Bear

  attr_reader :name, :type
  attr_accessor :stomach

#test_can_create_bear will check for initialize function to make sure Bear class has been created
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def food_count()
    return stomach.count
  end

  def eat_fish(fish)
    @stomach << fish
  end

#extension 1
  def make_bear_roar()
    return "Roar"
  end



end
