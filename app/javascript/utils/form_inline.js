window.addEventListener('turbolinks:load', () => {
    let controls = document.querySelectorAll('.primary');

    if (controls.length) {
        controls.forEach((control) => {
            control.addEventListener('click', form_inline_link_handler)
        });
    }
});

function form_inline_link_handler(e) {
    e.preventDefault();

    let dayId = this.dataset.dayId;
    form_inline_handler(dayId);
}

let form_inline_handler = (dayId) => {
    let link = document.querySelector('.primary[data-day-id="' + dayId + '"]');
    let form_inline = document.querySelector('form[data-day-id="' + dayId + '"]');

    if (form_inline.classList.contains('hide')){
        form_inline.classList.remove('hide');
        link.textContent = 'Отмена';
    }else{
        form_inline.classList.add('hide');
        link.textContent = 'Добавить заметку';
    }
};