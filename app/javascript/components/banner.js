import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById("banner-typed-text")
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["Rápido", "Prático", "Fácil"],
      typeSpeed: 80,
      loop: true
    });
  };
}

export { loadDynamicBannerText };
