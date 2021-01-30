class Viewindex
#Récupere les potins et le nom de son auteur
  def create_gossip
    puts "Quel est ton potin ? "
    content = gets.chomp
    puts "Mais qui es-tu en fait ?"
    author = gets.chomp
    return {content: content, author: author}
  end
#Affiche les potins
  def index_gossips(list_gossips)
    list_gossips.each do |gossip|
      puts "#{gossip[0]}  :  #{gossip[1]}"
    end
  end

end
