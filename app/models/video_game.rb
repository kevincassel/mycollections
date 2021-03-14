class VideoGame < ApplicationRecord

  def self.searchagame(query)
    require "uri"
    require "net/http"
    
    url = URI("https://api.igdb.com/v4/games")
    
    https = Net::HTTP.new(url.host, url.port)
    https.use_ssl = true
    
    request = Net::HTTP::Post.new(url)
    request["Client-ID"] = "60p43ul3st64mrthkneqpfofnevos4"
    request["Authorization"] = "Bearer 5jbpjxhwzus3hh29qt936qu93tb7ip"
    request["Content-Type"] = "text/plain"
    request["Cookie"] = "__cfduid=d6058770d0ed32c11d8e9b48fe090c0811615375495"
    request.body = "search \"#{query}\"; fields name, platforms.name, first_release_date, summary, genres.name, cover.url;\r\n\r\n"
    
    response = https.request(request)
    JSON.parse(response.read_body)

  end

end
