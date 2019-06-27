require 'pry'
class Cat

  attr_accessor :mood, :owner
  attr_reader :name
  # attr_writer

@@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @mood = mood
    @owner = owner
    @@all << self

    # binding.pry
  end

  def owner()
    @owner
  end

  def self.all
    @@all
  end

# binding.pry
end