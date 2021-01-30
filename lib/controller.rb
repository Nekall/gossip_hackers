class Controller
  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
    #gossip = Gossip.new("Jean-Michel Concierge", "Féfé est de Bordeaux")
    #pour le moment, le contenu de ce gossip est inscrit "en dur" dans le code. L'utilisateur ne peut pas le changer.
    #gossip.save
  end
  #demande un array de tous les gossip et demande a view de les afficher
  def index_gossips
    all_gossip = Gossip.all_gossips
    @view.index_gossips(all_gossip)
  end
  #demande quel gossip on veut supprimer et le supprime
  def delete_gossip
    #check par index et supprime l'index return par l'utilisateur
  end
end
