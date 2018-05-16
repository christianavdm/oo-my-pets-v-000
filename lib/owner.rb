require 'pry'

class Owner
  attr_accessor :pets, :name, :mood
  attr_reader :species, :fishes, :cats, :dogs
  attr_writer 
  
  @@owner = []
  
  def initialize(name)
    @name = name
    @pets = {:fishes => [], :cats => [], :dogs => []}
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
    @pets[:fishes] << fish
    owner.mood = "happy"
  end
  
  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
    owner.mood = "happy"
  end
  
  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
    owner.mood = "the most happy!"
  end
  
  def say_species
    return "I am a human."
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    @pets = {:fishes => [], :cats => [], :dogs => []}
    owner.mood = "sad"
  end
  
end