class MoviesController < ApplicationController

  def index
    new_search = params[:q] || ""
    json_string_response = open("http://www.omdbapi.com/?s=" + new_search).read
    ruby_hash_response = JSON.parse(json_string_response)
    @movies = ruby_hash_response["Search"]
  end


end
