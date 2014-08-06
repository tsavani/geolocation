require 'geocoder'

class GeolocationCall
  def self.get_city_name(latitude, longitude)
    geolocation = Geocoder.search("#{latitude},#{longitude}")
    geolocation.size == 0 ? [] : geolocation.first.city
  end
end