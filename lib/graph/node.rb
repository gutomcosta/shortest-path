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
  end
  
end
