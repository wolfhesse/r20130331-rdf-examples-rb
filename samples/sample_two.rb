
require 'rdf'
require 'rdf/json'
require 'rdf/ntriples'
require 'rdf/raptor'
#include RDF

class SampleTwo


  def self.rdr_one
    input = open('http://datagraph.org/jhacker/foaf.nt').read

    RDF::Reader.for(:ntriples).new(input) do |reader|
      reader.each_statement do |statement|
        puts statement.inspect
      end
    end
  end

  def run
    puts "#{self} is running"
  end
end

SampleTwo.rdr_one()
