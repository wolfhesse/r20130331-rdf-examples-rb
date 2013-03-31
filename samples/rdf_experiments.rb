require 'rdf'
require 'rdf/json'
require 'rdf/ntriples'
require 'rdf/raptor'

class RdfExperiments
  def read_write

    RDF::Reader.open("http://datagraph.org/jhacker/foaf.json") do |reader|
      reader.each_statement do |statement|
        puts statement.inspect
      end
    end


    RDF::Writer.open(File.dirname(__FILE__) + '/../data.d/hello.nt') do |writer|
      writer << RDF::Graph.new do |graph|
        graph << [:hello, RDF::DC.title, "Hello, world!"]
        graph << [:publisher, RDF::DC.person, "Roger Andel"]
      end
    end

    RDF::JSON::Writer.open(File.dirname(__FILE__) + '/../data.d/hello.json') do |writer|
      writer << RDF::Graph.new do |graph|
        graph << [:hello, RDF::DC.title, "Hello, world!"]
        graph << [:publisher, RDF::DC.person, "Roger Andel"]
      end
    end
  end

end
