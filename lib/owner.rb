
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

end