require('alpinejs');

import Splide from '@splidejs/splide';

if (document.getElementsByClassName('splide')) {
  new Splide('.splide').mount();
}

// document.addEventListener('DOMContentLoaded', () => {
//   if (document.getElementById('loading-screen')) {
//     setTimeout(() => {
//       document.getElementById('loading-screen').style.display = 'none';
//     }, 1000);
//   }
// });
