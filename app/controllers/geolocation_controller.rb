class GeolocationController < ApplicationController
  require 'geocoder'
  def index
  	if params[:latitude].present? &&  params[:longitude].present? 
    	@city = GeolocationCall.get_city_name(params[:latitude],params[:longitude])
    end
    
    if params[:ip_address].present?
    	@city_ip = GeolocationCall.get_city_name_from_ip(params[:ip_address])
    end

    # @city = GeolocationCall.get_city_name(44.99369000000001,-93.24731380000001)
    # @city_ip = GeolocationCall.get_city_name_from_ip("72.229.28.185")
  end
end
