
require 'pry'


class Owner
  attr_accessor :owner, :say_species, :all
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




end