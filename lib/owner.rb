class Owner
  require 'pry'

  attr_accessor :name
  attr_writer :species

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

end
