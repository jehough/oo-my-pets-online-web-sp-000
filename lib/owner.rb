class Owner
  # code goes here
  attr_accessor
  attr_reader :species
  @@all = []
  def initialize(name)
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

end
