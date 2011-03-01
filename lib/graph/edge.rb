module Shortest

  class Edge
    
    attr_reader :to, :from, :distance
    
    def initialize(from, to, distance)
      @to = to
      @from = from
      @distance = distance
    end
  
  end
end