// Change background color of main title to red

function changeBackground(event) {
  console.log(event)
  event.target.style.background = "red";
}

// Loop through abilities list and give each list item a class name

var title = document.getElementById('heading')
title.addEventListener("click", changeBackground);

var listItems = document.querySelectorAll('li');
for (var i = 0; i < listItems.length; i++) {
  listItems[i].className = 'abilities';
}
