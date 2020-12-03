import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButtons = document.querySelectorAll(selector);
  if (swalButtons.length > 0) { // protect other pages
    swalButtons.forEach(button =>{
      button.addEventListener('click', () => {
      swal(options).then(callback); // <-- add the `.then(callback)`
    });
    })
  }
};

export { initSweetalert };
