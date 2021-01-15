import Swiper from 'swiper/bundle';

let imageSwiper = new Swiper('.image-swiper-container', {
  init: false,
  loop: true,
  pagination: {
    el: '.tsq-pagination',
    type: 'bullets',
    renderBullet: (index, className) => {
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

imageSwiper.on('init', () => {
  document.getElementById('tsq-current-index').innerHTML = (imageSwiper.realIndex + 1).toString().padStart(2, '0');
});
imageSwiper.init();

imageSwiper.on('slideChange', () => {
  document.getElementById('tsq-current-index').innerHTML = (imageSwiper.realIndex + 1).toString().padStart(2, '0');
});
