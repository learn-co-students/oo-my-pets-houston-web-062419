class Cat
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  @@array = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    #@owner.all << self
    @@array << self
  end
  def self.all
    @@array
  end

end