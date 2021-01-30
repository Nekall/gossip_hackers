class Gossip
  attr_reader :author
  attr_reader :content

  def initialize(author, content)
    @content = content
    @author = author
    @array = []
    @array << @author
    @array << @content
  end
  #Sauvegarder les potins + autheurs dans un CSV
  def save
    #mode = 'a' write only appends data at end of file
    CSV.open("db/gossip.csv", "a") do |csv|
      csv << @array
    end
  end

  def self.all_gossips
    return CSV.read("db/gossip.csv")
  end
end
