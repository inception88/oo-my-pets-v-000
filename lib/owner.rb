class Owner
  attr_accessor :name, :pets
  attr_reader :species
  
  @@all = []
   def initialize(name)
     @name = name
     @species = 'human'
     @pets = {:fishes => [], :dogs => [], :cats => []}
     @@all << self
  end
  
  def reset 
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all = []
  end
  
  def say_species
    say = "I am a #{@species}."
  end 
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 
  
  def buy_cat
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog
    @pets[:dogs] << Dog.new(name)
  end 
  
  def walk_with_dogs
  end
  
  def feed_fish
  end
  
  def play_with_cats
  end
  
  def sell_pets
  end 
  
  def list_pets
  end 
end