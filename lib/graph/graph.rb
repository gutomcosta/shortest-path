module Shortest

  class Graph

    def initialize()
      @edges =  Array.new
      @vertices =  Array.new 
    end

    def add_edge(from,to, distance)
      from_vertice = self.vertice from
      to_vertice = self.vertice to
      from_vertice.neighbor to_vertice
      to_vertice.neighbor from_vertice
      
      
      edge = Edge.new( from, to, distance )
      @edges.push(edge)
    end
    
    def add_vertice(name)
      @vertices.push( Node.new name ) unless (@vertices.index { |v| v.name == name })
    end
    
    def vertice(name)
      index = @vertices.index {|v| v.name == name}
      @vertices[index]
    end
  
    def edge(from, to)
      @edges.select {|edge| (edge.from == from and edge.to == to)}.first
    end
    
    def shortest_path(hash)
      from = self.vertice( hash[:from] )
      to   = self.vertice( hash[:to] )
      possible_paths = from.possible_paths to
      path = possible_paths.shortest_path
      

    end
  end
end
