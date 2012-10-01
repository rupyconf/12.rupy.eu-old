
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

        var latLng = (initPosition) ? new google.maps.LatLng(initPosition[0], initPosition[1]) : new google.maps.LatLng(0, 0);
        this.markerDesc = (initMarkerText) ? initMarkerText : "";

        var myOptions = {
            zoom: 15,
            center: latLng,
			disableDefaultUI: true,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };

        this.map = new google.maps.Map(document.getElementById("googleMap"), myOptions);
        this.placeMarker(latLng);
        this.infoWindow = new google.maps.InfoWindow({
            content: this.markerDesc
        });
    },

    placeMarker: function(latLng)
    {
        this.marker = new google.maps.Marker({
            position: latLng,
            map: GoogleMapsController.map
        });
    }
}

$(document).ready(function() {
    var initLatLng = $('meta[name=latlong]').attr('content');

    var initPosition = (typeof initLatLng === 'undefined') ? null : initLatLng.split(',');
    var initText = (typeof initMarkerText === 'undefined') ? null : initMarkerText;
    
    GoogleMapsController.init(initPosition, initText);
});