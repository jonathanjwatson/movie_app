class Movie < ApplicationRecord
    include HTTParty
    base_uri 'http://www.omdbapi.com/?apikey=d31f1a94&type=movie&s=a'
  
    def self.generate(api_id)
      movie = find_by api_id: api_id
      return movie unless movie.nil?
  
      response = get "/#{api_id}"
      placeholder_image = "https://www.placecage.com/c/#{200 + api_id}/#{200 + api_id}"
  
      create!(name: response['name'],
              image: placeholder_image,
              wins: 0, 
              api_id: api_id)
    end
  end