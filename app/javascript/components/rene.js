const bigRene = () => {
  const rene = document.getElementById('rene');
  if (rene) {
    const bubble2 = document.querySelector(".speech-bubble2");
    const click = document.querySelector(".clique-rene");
    click.addEventListener('click', (event) => {
      rene.classList.toggle('reneBig');
      bubble2.classList.toggle('speech-bubble2hidden');
    });
  };
};

export { bigRene };

