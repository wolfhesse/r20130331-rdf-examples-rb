require 'rdf/json'


require 'rdf'
require 'rdf/ntriples'
require 'rdf/raptor'

#include RDF


class RdfExperiments
  def read_write

    RDF::Reader.open("http://datagraph.org/jhacker/foaf.json") do |reader|
      reader.each_statement do |statement|
        puts statement.inspect
      end
    end


    RDF::Writer.open("hello.nt") do |writer|
      writer << RDF::Graph.new do |graph|
        graph << [:hello, RDF::DC.title, "Hello, world!"]
      end
    end

    RDF::JSON::Writer.open('hello.json') do |writer|
      writer << RDF::Graph.new do |graph|
        graph << [:hello, RDF::DC.title, "Hello, world!"]
      end
    end
  end

end
