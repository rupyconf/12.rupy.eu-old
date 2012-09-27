
var GoogleMapsController =
{
    map: null,
    marker: null,
    markerDesc: null,
    infoWindow: null,

    init: function(initPosition, initMarkerText)
    {
        if ($('#googleMap').length == 0)
            return false;

        var latLng = (initPosition) ? new google.maps.LatLng(initPosition[0], initPosition[1]) : new google.maps.LatLng(49.20993, 16.599097);
        this.markerDesc = (initMarkerText) ? initMarkerText : "";
        var myOptions = {
            zoom: 15,
            center: latLng,
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            mapTypeControl: true,
            panControl: true,
            zoomControl: true,
            scaleControl: true
        };

        this.map = new google.maps.Map(document.getElementById("googleMap"), myOptions);
        this.placeMarker(latLng);
        
        
        this.infoWindow = new google.maps.InfoWindow({
            content: this.markerDesc
        });

        this.eventHandlers();

    },

    eventHandlers: function()
    {
        google.maps.event.addListener(this.marker, 'click', function() {
            GoogleMapsController.infoWindow.open(GoogleMapsController.map, GoogleMapsController.marker);
        });

        this.infoWindow.open(this.map, this.marker);
    },

    placeMarker: function(latLng)
    {
        this.marker = new google.maps.Marker({
            position: latLng,
            map: GoogleMapsController.map
            //icon: markerIcon
        });
    }
}

$(document).ready(function() {
    var initLatLng = $('meta[name=latlong]').attr('content');

    var initPosition = (typeof initLatLng === 'undefined') ? null : initLatLng.split(';');
    var initText = (typeof initMarkerText === 'undefined') ? null : initMarkerText;
    
    GoogleMapsController.init(initPosition, initText);
});