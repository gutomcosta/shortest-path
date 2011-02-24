require 'spec_helper'

describe "shortest-path" do

  context "i want to found shortest path between 2 points" do

    it "should return shortest path between Uba and Juiz de Fora cities" do
      uba = Node.new("uba")
      juiz_de_fora = Node.new("juiz de fora")
      tocantins = Node.new("tocantins")
      rodeiro = Node.new("rodeiro")
      muriae = Node.new("muriae")
      rio_pomba = Node.new("rio pomba")

      Graph.distance.from(uba).to(tocantins).is(3)
      Grafo.distance.from(tocantins).to(rio_pomba).is(1)
      Grafo.distance.from(rio_pomba).to(juiz_de_fora).is(2)
      Grafo.distance.from(uba).to(rodeiro).is(2)
      Grafo.distance.from(rodeiro).to(rio_pomba).is(4)
      Grafo.distance.from(rodeiro).to(muriae).is(1)
      Grafo.distance.from(muriae).to(juiz_de_fora).is(5)

      shortest_path = Grafo.shortest_path.from(uba).to(juiz_de_fora)
      shortest.path.nodes.include?(uba).should be_true
      shortest.path.nodes.include?(tocantins).should be_true
      shortest.path.nodes.include?(juiz_de_fora).should be_true
    end
  end
end
