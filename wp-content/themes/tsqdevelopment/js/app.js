require('alpinejs');

import Swiper from 'swiper/bundle';

let descriptionSwiper = new Swiper('.description-swiper-container', {
  loop: true,
  effect: 'fade',
  fadeEffect: {
    crossFade: true
  },
});

let imageSwiper = new Swiper('.image-swiper-container', {
  loop: true,
  pagination: {
    el: '.tsq-pagination',
    type: 'bullets',
    renderBullet: function (index, className) {
      return '<span class="' + className + '"></span>';
    },
    clickable: true
  },
  navigation: {
    nextEl: '.tsq-next',
    prevEl: '.tsq-prev',
  },
  autoplay: {
    delay: 3000,
  },
  effect: 'fade',
  fadeEffect: {
    crossFade: true
  },
});

imageSwiper.on('slideNextTransitionStart', function () {
  descriptionSwiper.slideNext(300, true);
});

imageSwiper.on('slidePrevTransitionStart', function () {
  descriptionSwiper.slidePrev(300, true);
});

// document.addEventListener('DOMContentLoaded', () => {
//   if (document.getElementById('loading-screen')) {
//     setTimeout(() => {
//       document.getElementById('loading-screen').style.display = 'none';
//     }, 1000);
//   }
// });
