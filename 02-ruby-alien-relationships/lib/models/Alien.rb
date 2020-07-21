class Alien
  # Aliens belong to a `planet` instance and know which planet they reside on
  attr_reader :name
  attr_accessor :planet, :significant_other

  @@all = []

  def initialize(name, significant_other=nil)
    @name = name
    @significant_other = significant_other
    @@all << self
  end

  def self.all
    @@all
  end

  def go_on_date(another_alien)
    if self.significant_other == nil && another_alien.significant_other == nil
      self.significant_other = another_alien
      another_alien.significant_other = self
    end
  end

  def breakup
    self.all.each do |alien|
      if self.significant_other == alien.name
        alien.significant_other = nil
      end
    self.significant_other = nil
  end

  def ready_to_move
    if self.planet != self.significant_other.planet
      self.planet = self.significant_other.planet
    end
  end



end
