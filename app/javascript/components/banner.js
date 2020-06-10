import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Rápido", "Prático", "Fácil"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
