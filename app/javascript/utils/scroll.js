window.addEventListener('turbolinks:load', () => {

    let nav = document.querySelector('nav');
    let buttons = nav.querySelectorAll('li');
    let group = document.querySelector('#first');

    buttons.forEach((btn) => {
        btn.addEventListener('click', () => {
            group.scrollIntoView({ behavior: 'smooth'});
        });
    });
});