
function refreshForm(event) {
  const button = event.currentTarget.querySelector("button");
  console.log(button);
  const faIcon = button.querySelector("i");
  let newHTML = "";
  if (faIcon.classList.contains("fa-heart")) {
    newHTML = '<i class="fas fa-arrow-down"></i>'
  } else {
    newHTML = '<i class="fas fa-heart"></i>'
  }
  button.innerHTML = newHTML;
}

const allForms = document.querySelectorAll('.munkesnaps')

allForms.forEach((form) => {
  form.addEventListener("submit", (event) => {
    refreshForm(event);
  });
});
