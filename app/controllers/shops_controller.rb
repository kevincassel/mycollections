class ShopsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @shops = Shop.all
    @ip = request.remote_ip
    @ip1 = request.ip
    @markers = @shops.geocoded.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { shop: shop }),
        
      }
    end
  end
end
