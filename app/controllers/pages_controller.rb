require 'open-uri'
require 'net/http'

class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    # params = {client_id: '60p43ul3st64mrthkneqpfofnevos4', Authorization:'Bearer k4yl1vnwpozs0s2jq4i2bz80em7u7c'}
    # url = URI.parse('https://api.igdb.com/v4/games')
    # resp, data = Net::HTTP.post_form(url, params)
    # p resp.body
  end


end


