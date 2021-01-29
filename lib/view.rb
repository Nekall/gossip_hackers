class View

  def create_gossip
    puts "Quel est ton potin ? "
    @content = gets.chomp
    puts "Mais qui es-tu en fait ?"
    @author = gets.chomp
    return params = {content: @content, author: @author}
  end



end
