module Shortest

  class Graph

    def initialize
      @arcs =  Array.new
    end

    def add_arc(from,to, distance)
      arc = Arc.new( from, to, distance )
      @arcs.push(arc)
    end
  
    def arc(to, from)
      Arc.new(to,from,3)
    end
  end
end