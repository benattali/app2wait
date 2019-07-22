const selector = () => {
  const id1 = document.querySelectorAll('.form-check')
  // const id2 = document.querySelector('form-group-active')
  // const id2 = document.querySelector('.form-check-active label')



    id1.forEach((item) => {
      item.addEventListener('click', (event) => {
        id1.forEach((classs) => {
          classs.classList.replace("form-check-active", "form-check")
        });
      item.classList.replace("form-check", "form-check-active")
     });
    });
};

export { selector };


// ("form-check-active", "form-check")
