const toggleForm = () => {
  const form = document.querySelector('.group-form')
  const button = document.querySelector('#toggle-form')

  if (button){
    button.addEventListener('click', (event) => {
      form.classList.toggle('d-none')
    })
  }
}

export { toggleForm }
