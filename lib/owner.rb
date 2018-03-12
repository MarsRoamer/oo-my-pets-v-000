class Owner
  require 'pry'

  attr_accessor :name, :pets
  attr_reader :species

  @@owners = []
  @@owner_count = 0

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
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
    "I am a #{self.species}."
  end

  def buy_fish(fish)
    Fish.new(fish)
    self.pets[:fish] = fish

  end

end
