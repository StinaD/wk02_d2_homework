class River

  attr_reader :name
  attr_accessor :accessor

  def initialize(name)
    @name = name
    @fishes = []
  end

  def fish_count()
    return @fishes.count
  end

  def add_to_river(fish)
    @fishes << fish
  end

  def empty_river
    @fishes.clear
  end

  def remove_fish(fish)
    @fishes.delete(fish)
  end




end
