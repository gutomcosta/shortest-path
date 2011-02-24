module Shortest

  class Vertex
    
    attr_reader :to, :from, :distance
    
    def initialize(to, from, distance)
      @to = to
      @from = from
      @distance = distance
    end
  
  end
end