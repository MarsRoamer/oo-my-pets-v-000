class Owner
  require 'pry'

  attr_accessor :name, :species
  attr_writer

  @@owners = []
  @@owner_count = 0

  def initialize(name)
    @name = name
    @@owners << self
  end

  def species(species)
    @species = species
    binding.pry

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
