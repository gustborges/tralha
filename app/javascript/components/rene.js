
const rene = document.getElementById('rene');
const bubble2 = document.querySelector(".speech-bubble2");

const bigRene = () => {
    rene.classList.toggle('reneBig');
    bubble2.classList.toggle('speech-bubble2hidden');
};


rene.addEventListener('click', (event) => {
  event.preventDefault();
  bigRene();
});


export { bigRene };

