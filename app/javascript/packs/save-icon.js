
function refreshForm(event) {
  const button = event.currentTarget.querySelector("button");
  const faIcon = button.querySelector("i");
  let newHTML = "";
  if (faIcon.classList.contains("opacity")) {
    newHTML = faIcon.classList.remove('opacity');
  } else {
    newHTML = faIcon.classList.add('opacity');
  }
  button.innerHTML = newHTML;
}

const allForms = document.querySelectorAll('.munkesnaps')

allForms.forEach((form) => {
  form.addEventListener("submit", (event) => {
    refreshForm(event);
  });
});


// ALERT TIMEOUT

$(document).ready(function(){
  setTimeout(function(){
    $('#alert').remove();
  }, 2500);
 })
