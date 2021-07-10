require_relative 'cat.rb'
require_relative 'dog.rb'

class Owner
  attr_accessor :owner, :cats, :dogs

  @@all = []

  def initialize(owner, species = "human", name = "Victoria", cats = 0, dogs = 0)
    @owner = owner
    @species = species
    @name = name
    @cats = []
    @dogs = []
    # @mood = mood
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def species
    @species
  end

  def say_species
    return "I am a #{@species}."
  end

  def name
    @name
  end

  def buy_cat(name)
    @cats << Cat.new(name, self)
  end

  def buy_dog(name)
    @dogs << Dog.new(name, self)
  end

  def walk_dogs
    owned_dogs = Dog.all.select do |dog|
      dog.owner == self
    end
    owned_dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    owned_cats = Cat.all.select do |cat|
      cat.owner == self
    end
    owned_cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def sell_pets
    sold_cats = Cat.all.select do |cat|
      cat.owner == self
    end
    sold_cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    sold_dogs = Dog.all.select do |dog|
      dog.owner == self
    end
    sold_dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
  end
 
  def list_pets
    "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end

end