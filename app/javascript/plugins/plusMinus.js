const plusMinus = () => {
  var divs = document.querySelectorAll(".card-count");
  divs.forEach((item) => {
    var minus = item.children[0];
    var count = item.children[1];
    var plus = item.children[2];
    minus.addEventListener('click', (event) => {
      if (count.value > 1) {
        count.value--;
      }
    });
    plus.addEventListener('click', (event) => {
      count.value++;
    });
  });
}
export { plusMinus }
