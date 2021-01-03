
require 'pry'


class Owner
  attr_accessor :owner, :say_species, :reset_all
  attr_reader :name, :species

  
  @@all = []
  
  def initialize(name)
    @name = name
    @owner = owner
    @species = "human"
    @say_species = "I am a human."
    @@all << self
  end

  def self.all
    # binding.pry
    @@all
  end

  def self.count
    # binding.pry
     self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats 
    Cat.all.select{|f| f.owner == self}
  end

  def dogs 
    Dog.all.select{|f| f.owner == self}
  end

  def buy_cat(name)
    Cat.new(name,self)
  end

  def buy_dog(name) 
    Dog.new(name,self)
  end

  def walk_dogs 
    self.dogs.each{|dog| dog.mood = "happy"}
  end

  def feed_cats 
    self.cats.each{|cat| cat.mood = "happy"}
  end

  def self.sell_pets 
    self.dogs.each{|dog| dog.mood = "nervous"}
    self.cats.each{|cat| cat.mood = "nervous"}
    cats.owner = nil 
    dogs.owner = nil 
  end

  def list_pets 
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end