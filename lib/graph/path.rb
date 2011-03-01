module Shortest

  class Path

    def initialize
      @through = Array.new
    end

    def start_node(node)
      @start_node = node
    end
    
    def end_node(node)
      @end_node
    end
    
    def through(node)
      @through.push node
    end

    def include_node?(node_name)
      @through.select {|node| node.name == node_name}
    end
    
    def total_nodes_in_path
      # total of through plus start and end nodes 
      @through.size + 2
    end
  end
  
end
