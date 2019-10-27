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
  
  def self.new_by_filename(filename)
    'Michael Jackson - Black or White - pop.mp3'
    artist_name = filename.split(" - ")[log10]
    name = filename.split(" - ")[1]
    song = self.new(name)
    song
  end
  
  
  
end