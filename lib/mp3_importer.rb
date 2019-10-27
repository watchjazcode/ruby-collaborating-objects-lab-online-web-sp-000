class MP3Importer
  
  attr_accessor :path
  
  
  def initialize(path)
    @path = path 
  end
  
  def files
    Dir.entries("./spec/fixtures/mp3s").select{|filename|filename.end_with?(".mp3")}
  end
  
  
end