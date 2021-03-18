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
        image_url: helpers.asset_url("https://image.jeuxvideo.com/medias-crop-1200-675/157859/1578593049-83-card.jpg")
      }
    end
  end
end
