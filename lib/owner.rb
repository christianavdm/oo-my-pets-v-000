require 'pry'

class Owner
  attr_accessor :pets, :name
  attr_reader :species
  attr_writer 
  
  @@owner = []
  
  def initialize(name)
    @name = name
    @pets = {"fishes" => [], "cats" => [], "dogs" => []}
    @@owner << self
    @species = "human"
  end
  
  def self.all 
    @@owner
  end
  
  def self.reset_all
    @@owner = []
  end
  
  def self.count
    @@owner.count
  end
  
  def buy_fish(name)
    fish = Fish.new(name)
    @pets["fishes"] << fish
  end
  
  def say_species
    puts "I am a human."
  end
  
end