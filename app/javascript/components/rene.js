
const rene = document.getElementById('rene');

const bigRene = () => {
    rene.classList.replace('reneSmall', 'reneBig');
};


rene.addEventListener('click', (event) => {
  event.preventDefault();
  bigRene();
});

export { bigRene };
