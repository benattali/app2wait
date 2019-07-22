const timeSelector = () => {
  const times = document.querySelectorAll('.card-times div'); // 1. finding all clickable divs - times
  const groups = document.querySelectorAll('.card-times'); // 2. groups - all 3 grouped inputs

  function handleActive(e){
    if(this.classList.contains('active')) return; // A. if already active, return clicked
    const children = this.parentElement.children; // B. find all times for specific input group
    var valueInput = e.target.innerText; // C. get value from clicked div
    groups.forEach((group, index) => {
      if(this.parentElement === group) { // D. if clicked input group is equal to group being looped over
        let input = document.querySelector(`#event_events_levels_attributes_${index}_time`); // E. find hidden input to apply value
        input.value = valueInput; // F. set hidden input ot value of clicked div
      }
    });

    for(let i = 0; i < children.length; i++) { // 5. loop over children divs
      if(children[i].classList.contains('active')){ // A. if any of 5 divs contains active
        children[i].classList.remove('active'); // B. remove class for div
      }
    };
    this.classList.add('active'); // 6. Set current active to clicked
  }
  times.forEach(span => {
    span.addEventListener('click', handleActive);
  });

};

export { timeSelector };
