require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []
  def initialize(species)
    @species = species
    @@all << self
  end
  def self.all
    @@all
  end
  def self.count
    self.all.length
  end
  def self.reset_all
    self.all.clear
  end
  def say_species
    "I am a #{@species}."
  end
  def pets
    @pets = {fishes: [], dogs: [], cats: []}
  end
  def buy_fish (name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
    binding.pry
  end
end
