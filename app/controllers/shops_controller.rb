class ShopsController < ApplicationController

  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @shops = Shop.all

    @markers = @shops.geocoded.map do |shop|
      {
        lat: shop.latitude,
        lng: shop.longitude
      }
    end
  end
end
