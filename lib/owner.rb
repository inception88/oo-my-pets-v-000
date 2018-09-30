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
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    @pets[:dogs].each do |instance|
    instance.mood = 'happy'
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |instance|
    instance.mood = 'happy'
  end
  
  def play_with_cats
    @pets[:cats].each do |instance|
    instance.mood = 'happy'
  end
  
  def sell_pets
    @pets.each do |key, value|
      key.each do |instance|
        instance.mood = 'nervous'
      end
    end
  end 
  
  def list_pets
  end 
end