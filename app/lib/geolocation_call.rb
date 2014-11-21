require 'geocoder'

class GeolocationCall
  def self.get_city_name(latitude, longitude)
    geolocation = Geocoder.search("#{latitude},#{longitude}")
    geolocation.size == 0 ? [] : geolocation.first.city
  end

  def self.get_city_name_from_ip(ip)
  		Geocoder.search("#{ip}")
  end

   def self.get_country_name_from_city(city)
  		Geocoder.search("#{city}")
  end

end