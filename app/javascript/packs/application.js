// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import { initMapbox } from '../plugins/init_mapbox';
import { scan } from '../plugins/init_quagga';
document.addEventListener('turbolinks:load', () => {
  initMapbox(); 
  scan();
})



// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});


// SWEETALERT/////

import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('.sweet-alert-demo', {
  title: "Great!",
  text: "The game have been added",
  icon: "success"
}, (value) => {
  console.log(value);
});



initSweetalert('.sweet-alert-delete', {
  title: "Good bye",
  text: "the game have been delete from your collection",
  icon: "warning"
}, (value) => {
  console.log(value);
});


// swal( '.sweet-alert-delete', {
//   title: "Are you sure?",
//   text: "Once deleted, you will not be able to recover this game",
//   icon: "warning",
//   buttons: true,
//   dangerMode: true,
// })
// .then((willDelete) => {
//   if (willDelete) {
//     swal("Poof! Your game has been deleted!", {
//       icon: "success",
//     });
//   } else {
//     swal("Your game is safe!");
//   }
// });
