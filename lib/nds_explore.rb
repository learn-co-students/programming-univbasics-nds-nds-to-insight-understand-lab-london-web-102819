$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"
require 'pp'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  pp nds
end
# print_first_directors_movie_titles loops over Spielberg’s movies
# and prints out their names with newlines
def print_first_directors_movie_titles
  nds = directors_database
  director_index = 0
  movie_index = 0
  while movie_index < nds[director_index][:movies].length do
    movie_title = nds[director_index][:movies][movie_index][:title]
    puts movie_title
    movie_index += 1
  end
end
