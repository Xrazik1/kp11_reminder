window.addEventListener('turbolinks:load', () => {
	window.setTimeout(function() {
		document.querySelector('body').classList.remove('is-preload');
		}, 100);
});
