class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.glob(path + '/*.mp3').map {|file| File.basename(file)}
  end

  def import
    files.each {|file| Song.new_by_filename(file)}
  end
end
