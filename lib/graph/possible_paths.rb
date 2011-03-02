module Shortest

  class PossiblePaths

    def initialize
      @paths = Array.new
    end
    
    def add_path(path)
      @paths.push(path)
    end

    def shortest_path
      @paths.first
    end
    
  end
end
