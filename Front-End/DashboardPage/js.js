const sidebar = document.querySelector('nav');

const btn = document.querySelector('.shrink-btn');

btn.addEventListener('click', () => {
    sidebar.classList.toggle('open');
});