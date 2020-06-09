// const target = document.querySelectorAll('[data-anime]');
// const animationClass = 'animate';

// function animeScroll () {


//   const windowTop = window.pageYOffset +((window.innerHeight * 3)/4);
//   target.forEach(function(element){
//     if((windowTop) > element.offsetTop){
//       element.classList.add(animationClass)
//     } else {
//       element.classList.remove(animationClass);
//     }
//   })
// };

// if(target.lenght){
//   window.addEventListener('scroll', function(){
//     animeScroll();
//   })
// }

const animeScroll = () => {
  const targets = document.querySelectorAll('[data-anime]');
  if(targets) {
    window.addEventListener ('scroll', () => {

      if(window.scrollY >= window.innerHeight){
         targets.forEach((target) => target.classList.add('animate'));
       } else {
         targets.forEach((target) => target.classList.remove('animate'));
       }
    });
  }
}


export { animeScroll };



// const initUpdateNavbarOnScroll = () => {
//   const navbar = document.querySelector('.navbar-lewagon');
//   if (navbar) {
//     window.addEventListener('scroll', () => {
//       if (window.scrollY >= window.innerHeight) {
//         navbar.classList.add('navbar-lewagon-color');
//       } else {
//         navbar.classList.remove('navbar-lewagon-color');
//       }
//     });
//   }
// }

// export { initUpdateNavbarOnScroll };
