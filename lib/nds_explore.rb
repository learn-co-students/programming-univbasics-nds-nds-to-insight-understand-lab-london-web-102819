$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
# Call the method directors_database to retrieve the NDS
require "pp"
require "pry"
def pretty_print_nds(nds)
  pp nds 
end
# binding.pry
# binding.pry 
def print_first_directors_movie_titles
  directors_database[0][:movies].each{|hash|
  puts hash[:title]  
}
end
