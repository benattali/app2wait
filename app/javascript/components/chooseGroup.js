const chooseGroup = () => {
  const group = document.querySelectorAll(".form-check");

  group.forEach((chosen) => {
    chosen.addEventListener('click', event => {
      const submit = document.querySelector("#chosen");
      submit.classList.add("fixed-bottom");
      console.log("Ben Attali created this")
    });
  })
}

export { chooseGroup };
