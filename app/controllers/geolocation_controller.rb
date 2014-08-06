class GeolocationController < ApplicationController
  require 'geocoder'
  def index
    @city = GeolocationCall.get_city_name(44.99369000000001,-93.24731380000001)
  end
end
