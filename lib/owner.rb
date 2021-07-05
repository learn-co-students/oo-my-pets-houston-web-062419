class Owner
  attr_accessor  
  attr_reader :species, :name

  @@all = []

  def initialize(name) #instance method
    @species = "human"
    @name = name
    

    @@all << self
  end

  def self.all #Class method
    @@all
  end 

  def self.reset_all
    all.clear
  end


  def self.count #Class method
    @@all.size 
  end

  def species
    @species
  end

  def say_species(species = "human")
    "I am a #{species}."
  end

  def name
    @name
  end

  def buy_cat(cat_name)
    #buy a new cat
    Cat.new(cat_name, self)

  end

  def cats
    Cat.all.select{|cat| cat.owner == self}
  end

  def buy_dog(dog_name)
    
    Dog.new(dog_name, self)

  end

  def dogs
    Dog.all.select{|dog| dog.owner == self}
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


  def self.all
    @@all
  end 


end