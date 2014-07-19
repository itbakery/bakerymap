module MapsHelper
  #itbakerydev key
  def google_maps_api_key
    "AIzaSyCk19EdHfA8qlClJdSirhPXIhQt8Z_GDh8"
  end

  def google_api_url
     "http://maps.googleapis.com/maps/api/js?v=3.exp"
  end

  def google_api_access
    ###"#{google_api_url}?key=#{google_maps_api_key}&amp;libraries=geometry,visualization&amp;sensor=false"
    ###"#{google_api_url}?key=#{google_maps_api_key}&amp;libraries=geometry,visualization,place"
    "#{google_api_url}&key=#{google_maps_api_key}&libraries=geometry,visualization,place"
  end

  def google_maps_api
     content_tag(:script,:type => "text/javascript",:src => google_api_access) do
     end
  end

  def google_maps_util
    "http://google-maps-utility-library-v3.googlecode.com/svn/tags/markerclustererplus/2.0.14/src/markerclusterer_packed.js"
  end

  def google_maps_util_api
     content_tag(:script,:type => "text/javascript",:src => google_maps_util) do
     end
  end

end
