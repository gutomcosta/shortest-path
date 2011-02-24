require 'spec_helper'

describe "Graph configuration" do

  context "configuring the graph data" do

    it "should allow easy configuration graph nodes" do
      GraphConfiguration.distance.from("uba").to("tocantins").is(3)
      GraphConfiguration.distance.from("tocantins").to("rio pomba").is(1)
      GraphConfiguration.distance.from("rio pomba").to("juiz de fora").is(2)
      GraphConfiguration.distance.from("uba").to("rodeiro").is(2)
      GraphConfiguration.distance.from("rodeiro").to("rio pomba").is(4)
      GraphConfiguration.distance.from("rodeiro").to("muriae").is(1)
      GraphConfiguration.distance.from("muriae").to("juiz de fora").is(5)

      graph = GraphConfiguration.graph
      graph.should_not be_nil
    end
    
    it "should create a graph matrix" do 
      
      GraphConfiguration.distance.from("uba").to("tocantins").is(3)
      GraphConfiguration.distance.from("tocantins").to("rio pomba").is(1)
      GraphConfiguration.distance.from("rio pomba").to("juiz de fora").is(2)

      vertex = GraphConfiguration.graph.vertex("uba", "tocantins")
      vertex.distance.should == 3
    
    end
  end
end
