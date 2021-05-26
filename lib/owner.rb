class Owner

  attr_reader :name, :species
  attr_accessor :cats, :dogs

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length()
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    @cats 
  end

  def dogs
    @dogs
  end

  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end

  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end

  def walk_dogs
    @dogs = @dogs.collect do |doggo|
      doggo.mood = "happy"
    end
  end

  def feed_cats
    @cats = @cats.collect do |kitty|
      kitty.mood = "happy"
    end
  end

  def sell_pets
    
    @dogs = @dogs.collect do |doggo|
      doggo.mood = "nervous"
      doggo.owner = nil
    end

    @cats = @cats.collect do |kitty|
      kitty.mood = "nervous"
      kitty.owner = nil
    end

    @dogs.clear
    @cats.clear

  end

  def list_pets
    "I have #{@dogs.count} dog(s), and #{@cats.count} cat(s)."
  end

end