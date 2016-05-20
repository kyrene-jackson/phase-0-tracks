function changeBackground(event) {
  console.log(event)
  event.target.style.background = "red";
}

var title = document.getElementById('heading')
title.addEventListener("click", changeBackground);
