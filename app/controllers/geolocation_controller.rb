class GeolocationController < ApplicationController
  require 'geocoder'
  def index
  	if params[:latitude].present? &&  params[:longitude].present? 
    	@city = GeolocationCall.get_city_name(params[:latitude],params[:longitude])
      sleep 10
    end

    if params[:ip_address].present?
    	geo_ip = GeolocationCall.get_city_name_from_ip(params[:ip_address])
      @country_ip = geo_ip.size == 0 ? [] : geo_ip.first.country
      @city_ip = geo_ip.size == 0 ? [] : geo_ip.first.city
      @zip_ip = geo_ip.size == 0 ? [] : geo_ip.first.postal_code
      sleep 10
    end

    if params[:city_name].present?
      geo = GeolocationCall.get_country_name_from_city(params[:city_name])
      @country = geo.size == 0 ? [] : geo.first.country
      @state = geo.size == 0 ? [] : geo.first.state
      @countrycode = geo.size == 0 ? [] : geo.first.country_code
    end

    # @city = GeolocationCall.get_city_name(44.99369000000001,-93.24731380000001)
    # @city_ip = GeolocationCall.get_city_name_from_ip("72.229.28.185")
  end
end
