class Artist 
  
  attr_accessor :name
  
  #class variable, where to put all of the artists
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
  
  def songs 
    Song.all.select {|song| song.artist == self}
  end
  #if song.artist is equal to instance inside, we should pick it out from list
  
  def add_song(song)
    song.artist = self
  end
  
  def self.find_or_create_by_name(name)
    if there is an artist with the name given 
      return artist with name
      
    else 
      create artist with that name
      
    end 
  
end 




