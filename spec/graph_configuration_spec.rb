require 'spec_helper'

describe "Graph configuration" do

  context "configuring the graph data" do

    it "should allow easy configuration graph nodes" do
      
      # with graph  do
      #   define distance :from 'uba', :to => 'tocantins', :is => 3
      #   define distance :from 'tocantins', :to => 'rio pomba', :is => 1
      #   define distance :from 'rio pomba', :to => 'juiz de fora', :is => 2
      # end

      # or 
      #GraphConfiguration.distance.from("uba").to("tocantins").is(3)
      
      GraphConfiguration.distance :from => 'uba', :to => "tocantins", :is => 3
      GraphConfiguration.distance :from => 'tocantins', :to => "rio pomba", :is => 1
      GraphConfiguration.distance :from => 'rio pomba', :to => "juiz de fora", :is => 2
      GraphConfiguration.distance :from => 'uba', :to => "rodeiro", :is => 2
      GraphConfiguration.distance :from => 'rodeiro', :to => "rio pomba", :is => 4
      GraphConfiguration.distance :from => 'rodeiro', :to => "muriae", :is => 1
      GraphConfiguration.distance :from => 'muriae', :to => "juiz de fora", :is => 3

      graph = GraphConfiguration.graph
      graph.should_not be_nil
    end
    
    it "should create a graph matrix" do 
      
      GraphConfiguration.distance :from => 'uba', :to => "tocantins", :is => 3
      GraphConfiguration.distance :from => 'tocantins', :to => "rio pomba", :is => 1
      GraphConfiguration.distance :from => 'rio pomba', :to => "juiz de fora", :is => 2

      graph = GraphConfiguration.graph
      edge = graph.edge "uba", "tocantins"
      edge.from.should == "uba"
      edge.to.should == "tocantins"
      edge.distance.should == 3
    end
    
    it "should return a shortest path between uba and juiz de fora" do
      
      GraphConfiguration.distance :from => 'uba', :to => "tocantins", :is => 3
      GraphConfiguration.distance :from => 'tocantins', :to => "rio pomba", :is => 1
      GraphConfiguration.distance :from => 'rio pomba', :to => "juiz de fora", :is => 2
      GraphConfiguration.distance :from => 'uba', :to => "rodeiro", :is => 2
      GraphConfiguration.distance :from => 'rodeiro', :to => "rio pomba", :is => 4
      GraphConfiguration.distance :from => 'rodeiro', :to => "muriae", :is => 2
      GraphConfiguration.distance :from => 'muriae', :to => "juiz de fora", :is => 3
      
      graph = GraphConfiguration.graph
      path = graph.shortest_path :from => 'uba', :to => 'juiz de fora'
      path.total_nodes_in_path.should == 4
      path.include_node?("uba").should be_true
      path.include_node?("tocantins").should  be_true
      path.include_node?("rio pomba").should be_true
      path.include_node?("juiz de fora").should be_true
    end
    
  end
end
