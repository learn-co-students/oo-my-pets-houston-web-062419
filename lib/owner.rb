class Owner

   attr_accessor :dogs, :cats, :owner
   attr_reader :species, :name

   @@all = []

  def initialize(name = "Victoria", cats = 0, dogs = 0) #instance method 
    @species = "human"
    @name = name
    @@all << self
    @dogs = []
    @cats = []
  end
  

  def self.all #class method
    @@all
  end

  def self.count #class method
    @@all.size
  end

  def species
     @species
  
  end

  def name
    @name
  end

  def say_species(species = "human")
    "I am a #{species}."
    
  end

  def self.reset_all
    all.clear
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
    return "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
  





  # code goes here
end