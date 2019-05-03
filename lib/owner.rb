class Owner
  # code goes here
  attr_accessor :name
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
end
