// Created this file to add stuff that gets linked into application.js -- Lou

// FIRST SECTION: GETTING THE MAP TO SHOW UP
import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';


const fitMapToMarkers = (map, markers) => {
  const bounds = new mapboxgl.LngLatBounds();
  markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
  map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
};

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/louisbemberg/ckbjtavd203zt1irv0kyul5cq' //custom map style I found online, may not work on other accounts?
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
 const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); //added for marker popups

      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });
    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                      mapboxgl: mapboxgl }));
  }
};











// EXPORTING THAT FUNCTION TO PACKS/APPLICATION.JS
export { initMapbox };

