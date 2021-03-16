class MessagesController < ApplicationController

  def scan(barcode)
    require "net/http"
    require "json"
    api_key = "tffzucvalzqbiuz1jkq22qjyu02s09"
    url = "https://api.barcodelookup.com/v2/products?barcode=#{barcode}&formatted=y&key=" + api_key
  
        uri = URI(url)
        response = Net::HTTP.get(uri)
        data = JSON.parse(response)
    end

  def index
    @messages = Message.all

    # test code pour scan
    @scan = scan(3614272049529)
    @nom = @scan["products"].first["product_name"]
  end

  def show
    @message = Message.find(params[:id])
  end

end
