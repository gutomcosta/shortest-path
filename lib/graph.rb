
class GraphConfiguration

  def self.distance(hash)
    @graph = Shortest::Graph.new unless @graph
    @graph.add_arc hash[:from], hash[:to], hash[:is]
  end
  
  def self.graph
    @graph
  end

end



  
