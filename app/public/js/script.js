
var myList = document.getElementById('mylist');
var newLi = document.createElement('li');
var newText = document.createTextNode('danko')
newLi.appendChild(newText);
myList.appendChild(newLi);

function addInput() {
  var input = document.getElementById('myinput');
  var myList = document.getElementById('mylist');
  var newLi = document.createElement('li');
  var newText = document.createTextNode('danko')
  newLi.appendChild(newText);
  myList.appendChild(newLi);
}

var submitButton = document.getElementById('mybutton');

submitButton.addEventListener('click', addInput, false);
