require "pry"

class Sandwich

  #dd your code for the sandwich here
  def initialize(name, price, ingredients = [], bread = "wheat", isVegetarian, isVegan)
    @name = name
    @price = price
    @ingredients = ingredients
    @bread = bread
    @isVegetarian = isVegetarian
    @isVegan = isVegan
    @ratings = []
  end

  attr_reader :name, :isVegetarian, :isVegan
  attr_accessor :price, :ingredients, :bread, :ratings, :avg_rating

  @@avg_rating = []

  def isVegetarian=(boolean)
    @isVegetarian = boolean
    if !boolean
      @isVegan = false
    end
  end

  def isVegan=(boolean)
    @isVegan = boolean
    if boolean
      @isVegetarian = true
    end
  end

  def order
    "You ordered the #{name} which has #{make_list(ingredients)} on #{bread}. That will be $#{price} please!"
  end

  def make_list(array)
    if array.length == 0
      "nothing"
    elsif array.length == 1
      array.join()
    elsif array.length == 2
      array.join(" and ")
    elsif array.length >= 3
      array[0..-2].join(", ") << " and " << array.last
    end
  end


  def add_rating(rating_arg)
    @ratings << rating_arg if rating_arg.between?(1,5)
  end

  def average_rating
    # use inject or reduce
    ratings_sum = ratings.inject {|sum, n| sum + n }
    ratings_avg = ratings_sum / @ratings.count
  end

end

# Test data modified
sandwich_1 = Sandwich.new("turkey club", 6.99, ["mayo","bacon","lettuce","tomato","turkey"], "rye", false, false)
sandwich_1.add_rating(3)

sandwich_2 = Sandwich.new("grilled cheese", 4.29, ["swiss cheese","muenster cheese","mayo","butter"], "Italian", false, false)
sandwich_2.add_rating(4.5)

sandwich_3 = Sandwich.new("veggie wrap", 5.55, ["portabella mushrooms", "red peppers", "zucchini", "avacado", "blue cheese"], "spinach wrap", true, false)
sandwich_3.add_rating(3.8)

binding.pry
puts "Yes chef!"
