#require 'pry'
#require 'csv'

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

  def save
    CSV.open("db/gossip.csv", "w") do |csv|
      csv << @array
    end
  end
end


#binding.pry
#puts "C'est la fin"
