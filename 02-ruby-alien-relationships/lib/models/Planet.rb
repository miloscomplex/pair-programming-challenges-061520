class Planet
  #A planet has an `#aliens` method that allows it to see all the aliens
  #currently occupying it
  attr_reader :name
  attr_accessor :aliens, :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def aliens
    # self.all.map {|alien| alien.name == self }
    Alien.all.each {|alien| alien.planet == self }
  end

  def local_singles
    singles_array = []
    Alien.all.each do |alien|
      if alien.planet == self
        singles_array << alien if alien.significant_other == nil
      end
    end
  end

  def self.empty_planets
    self.all.each {|planet| planet.aliens == nil}
  end




end
