require_relative 'owner.rb'
class Dog

  attr_accessor :mood, :owner
  attr_reader :name
  # attr_writer

@@all = []

  def initialize(name, owner, mood = "nervous")
    @name = name
    @mood = mood
    @owner = owner
    @@all << self
  end

  def owner()
    @owner
  end

  def self.all
    @@all
  end


end