class Owner
attr_reader :name, :species


@@all = []
def initialize(name, species = "human")
@name = name
@species = species

@@all << self
end

def say_species
"I am a #{self.species}."
end

def self.all
@@all
end

def self.count
@@all.count
end

def self.reset_all
@@all.clear
end

def cats
Cat.all.select {|cats|cats.owner == self}
end

def dogs
Dog.all.select {|dogs|dogs.owner == self}
end

def buy_cat(name)
Cat.new(name, self, "happy")
end

def buy_dog(name)
Dog.new(name, self, "old and tired")
end

def walk_dogs
  #selects all the dogs that belong to owner and change their mood to happy
self.dogs.select {|dogs|dogs.mood = "happy"}
end

def feed_cats
self.cats.select {|cats|cats.mood = "happy"}
end

def sell_pets
  self.dogs.select {|dogs|dogs.mood = "nervous"}
  self.dogs.select {|dogs|dogs.owner = nil}
  self.cats.select {|cats|cats.mood = "nervous"}
  self.cats.select {|cats|cats.owner = nil}
end

def list_pets
"I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."


end



##  ###
end##