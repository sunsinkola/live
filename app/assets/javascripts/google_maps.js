//google maps through google maps api
     window.onload = function() {

        var mapOptions = {
          center: new google.maps.LatLng(gon.lat, gon.lon),
          zoom: 20,
          mapTypeId: google.maps.MapTypeId.SATELLITE
        };
        var map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);
      };

