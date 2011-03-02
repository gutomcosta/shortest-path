module Shortest

  class Node
    attr_reader :name
    def initialize(name)
      @name = name
      @neighbors = Array.new
    end
    
    def neighbor (node)
      @neighbors.push  node
    end

    def possible_paths(to)
      path = Path.new
      path.start_node self
      path.through Node.new("tocantins")
      path.through Node.new("rio pomba")
      path.end_node to
      
      possible_paths =  PossiblePaths.new
      possible_paths.add_path path
      possible_paths
    end
    
  end
  
end
