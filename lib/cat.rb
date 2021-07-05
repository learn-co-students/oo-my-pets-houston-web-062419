class Cat

  attr_reader :name
  attr_accessor :mood, :owner

  @@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @mood = mood
    @owner = owner

    @@all << self
  end 

   def self.all
    @@all
   end 


end