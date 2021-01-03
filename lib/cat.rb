class Cat

   attr_accessor :owner, :mood 
   attr_reader :name 

   @@all = []

  def initialize(owner,name)
     @name = name
     @owner = owner
     @mood = "nervous"
     @@all << self
  end

  def self.all 
    @@all
  end




end