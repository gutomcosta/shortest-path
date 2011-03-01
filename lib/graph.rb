
class GraphConfiguration

  def self.distance(hash)
    # @edges = Array.new unless @edges
    #   @vertices = Array.new unless @vertices
    #   @edges.push Shortest::Edge.new hash[:from], hash[:to], hash[:is]
    #   @vertices.push Shortest::Node.new hash[:from]
    #   @vertices.push Shortest::Node.new hash[:from]
    @graph = Shortest::Graph.new unless @graph

    @graph.add_vertice hash[:from]
    @graph.add_vertice hash[:to]
    
    @graph.add_edge hash[:from], hash[:to], hash[:is]
  end
  
  def self.graph
    graph = @graph.clone
    @graph = nil
    graph 
  end

end



  
