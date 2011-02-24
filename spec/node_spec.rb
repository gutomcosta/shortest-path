require 'spec_helper'

describe "graph's nodes" do
  context "configuring a node" do

    it "should allow define a name to node" do
      node = Graph::Node.new("Uba")
      node.should_not be_nil
    end

  end
  
end
