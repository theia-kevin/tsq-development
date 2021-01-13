require('alpinejs');

import Swiper, { Navigation, Pagination } from 'swiper';

Swiper.use([Navigation, Pagination]);

let descriptionSwiper = new Swiper('.description-swiper-container', {
  loop: true
});

let imageSwiper = new Swiper('.image-swiper-container', {
  loop: true,
  pagination: {
    el: '.tsq-pagination',
    type: 'bullets',
    renderBullet: function (index, className) {
      return '<span class="' + className + '"></span>';
    }
  },
  navigation: {
    nextEl: '.tsq-next',
    prevEl: '.tsq-prev',
  }
});

imageSwiper.on('slideChange', function () {
  descriptionSwiper.slideNext(300, true);
});

// document.addEventListener('DOMContentLoaded', () => {
//   if (document.getElementById('loading-screen')) {
//     setTimeout(() => {
//       document.getElementById('loading-screen').style.display = 'none';
//     }, 1000);
//   }
// });
