class Song 
  
  attr_accessor :name, :artist
  
  #class variable, where to put all of the songs
  @@all = []
  
  # instance method 
  def initialize(name)
    @name = name 
    save
  end
  
  def save
    @@all << self
  end
  
  # getter for class variable @@all
  # other parts of code can access it
  def self.all
    @@all
  end 
  
  
end