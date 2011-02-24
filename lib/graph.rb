
class GraphConfiguration

  def self.distance
    @graph = Shortest::Graph.new
  end
  
  def self.graph
    @graph
  end

end
  
