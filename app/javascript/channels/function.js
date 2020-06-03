const APPID = "plDYHRL8WDSW"
const APIKEY = "e91bc825ba71871cb65581bf92ece5e1"

// const places = require ("places.js");
import places from 'places.js';
const initAutocomplete = () => {
  const addressInput = document.getElementsByClassName('address-input')[0];
  if (addressInput) {
places({
    appId: APPID,
    apiKey: APIKEY,
    container: addressInput
    }).configure({
    type: 'city',
    aroundLatLngViaIP: false,
  });
  }
};
export { initAutocomplete };
