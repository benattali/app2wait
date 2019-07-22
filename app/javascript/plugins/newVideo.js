const toggleVideo = () => {
  const form = document.querySelector('#video_new')
  const button = document.querySelector('.video-show')

  if (button){
    button.addEventListener('click', (event) => {
      form.classList.toggle('d-none')
    })
  }
}

export { toggleVideo }
