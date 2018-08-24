const delayInMilliseconds = 10

$(document).ready(function(){
  $(".category-choice").click(function(){
    $(this).toggleClass("active");
  });
});

const filterbutton = document.getElementById("filter-button");

  filterbutton.addEventListener("click", (event) => {

    const types = document.querySelectorAll(".category-filter");
    types.forEach(function(type) {
      type.addEventListener("click", (event) => {
        setTimeout(function() {
          $("#goobypls").click();
        }, delayInMilliseconds);
      });
    });

    const dancing = document.querySelectorAll("#check01");
    dancing.forEach(function(dance) {
      dance.addEventListener("click", (event) => {
        setTimeout(function() {
          $("#goobypls").click();
        }, delayInMilliseconds);
      });
    });

    const smoking = document.querySelectorAll("#check02");
    smoking.forEach(function(smoke) {
      smoke.addEventListener("click", (event) => {
        setTimeout(function() {
          $("#goobypls").click();
        }, delayInMilliseconds);
      });
    });

});




// const filterbutton = document.getElementById("filter-button");
//   filterbutton.addEventListener("click", (event) => {
//     console.log("WOW");
//     const types = document.querySelectorAll(".category-filter");
//     types.forEach(function(type) {
//       type.addEventListener("click", (event) => {
//         if (type.querySelector("input").checked) {
//           console.log("checked");
//         } else {
//           console.log(type)
//           console.log(type.querySelector("input"))
//           console.log("unchecked");
//         };
//       });
//     })
// });
