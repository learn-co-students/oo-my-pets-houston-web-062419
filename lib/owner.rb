require_relative "dog.rb"


class Owner
  # code goes here
  @@array = []
  attr_reader :name, :cats, :dogs



  def initialize (name)
    @name = name
    @@array << self
    @species = "human"
    @cats = []
    @dogs = []

  end

  def self.all
    @@array
  end
  def self.count
    @@array.size
  end
  def self.reset_all
    @@array.clear
  end
  def species
    @species
  end
  def say_species
    "I am a #{@species}."
  end
  def buy_cat(name)
    @cats << Cat.new(name, self)
    #@cats = [Cat.new("Crookshanks", self)]

  end
  def cats
    @cats
  end
  def buy_dog(name)
    #@dogs << dog
    @dogs.push(Dog.new(name, self))

  end
  def dogs
    @dogs
  end
  def walk_dogs
    Dog.all.map {|dog| dog.mood = "happy"}
  end
  def feed_cats
    Cat.all.map {|cat| cat.mood = "happy"}
  end
  
  def sell_pets
    Dog.all.map {|dog| 
      dog.mood = "nervous"
      dog.owner = nil
    }
    Cat.all.map {|cat| 
      cat.mood = "nervous"
      cat.owner = nil
    }

  end
  def list_pets
    "I have #{@dogs.size} dog(s), and #{@cats.size} cat(s)."
  end

end

o = Owner.new("name")
dog = Dog.new("Daisy", o)
o.buy_dog(dog)
o.walk_dogs
puts o.dogs[0].mood
puts dog.mood