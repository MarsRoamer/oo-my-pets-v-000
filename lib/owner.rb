class Owner
  require 'pry'

  attr_accessor :name
  attr_writer :species

  @@owners = []
  @@owner_count = 0

  def initialize(species)
    @species = species
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.count
  end

  def self.reset_all
    @@owners = []
    @@owners.count
  end

  def say_species
    self.species
  end

end
