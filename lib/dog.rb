class Dog
  # code goes here
  attr_accessor :owner, :mood
  attr_reader :name
  @@array = []
  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@array << self
  end

  def mood=(mood)
    @mood = mood
  end
  def mood
    @mood
  end

  def self.all
    @@array
  end

end