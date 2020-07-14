require "pry"

class Sandwich

  #dd your code for the sandwich here
  def initialize(name)
    @name = name
  end

  attr_reader :name
  attr_accessor :price, :ingredients, :bread, :ratings, :vegetarian, :vegan

  @ingredients= []
  @@ratings = []

  def order
    puts "You ordered the #{name} which has #{make_list(ingredients)} on #{bread}. That will be $#{price} please!"
  end
  #
  # do we make these boolean methods?
  # def isVegetarian?(input = false)
  #   input == true ? true : false
  # end

  def make_list(array)
    if array.length == 1
      array.join()
    elsif array.length == 2
      array.join(" and ")
    elsif array.length >= 3
      array[0..-2].join(", ") << " and " << array.last
    end
  end

  def isVegetarian?
    vegetarian
  end

  def isVegan?
    @vegetarian = true if vegan == true
    vegan
    # How can you change the setter method to make it so setting
    # `isVegan?` to true also sets `isVegetarian?` to true?
  end


  def add_rating(rating)
    @@ratings << rating if rating.between?(1,5)
  end

  def average_rating
    # use inject or reduce
    ratings_sum = @@ratings.inject {|sum, n| sum + n }
    ratings_avg = ratings_sum / @@ratings.count
  end

end

# Test data
sandwich_1 = Sandwich.new("turkey club")
sandwich_1.price = 3.00
sandwich_1.ingredients = ["mayo","bacon","lettuce","tomato","turkey"]
sandwich_1.bread = "rye"
sandwich_1.add_rating(3)

sandwich_2 = Sandwich.new("grilled cheese")
sandwich_2.price = 4.30
sandwich_2.ingredients = ["swiss cheese","muenster cheese","mayo","butter"]
sandwich_2.bread = "Italian"
sandwich_2.add_rating(4.5)

sandwich_3 = Sandwich.new("veggie wrap")
sandwich_3.price = 5.55
sandwich_3.ingredients = ["portabella mushrooms", "red peppers", "zucchini", "avacado", "blue cheese"]
sandwich_3.bread = "spinach wrap"
sandwich_3.vegetarian = true
sandwich_2.add_rating(3.8)

binding.pry
puts "Yes chef!"
