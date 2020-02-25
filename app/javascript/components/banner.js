import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Singers", "Musicians", "Bands", "Fire Performers", "Actors", "Cabaret Dancers", "Acrobats" ],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
