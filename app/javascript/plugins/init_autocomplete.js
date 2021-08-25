import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('form-control');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
