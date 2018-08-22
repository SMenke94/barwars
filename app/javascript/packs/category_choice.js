const delayInMilliseconds = 100

$(document).ready(function(){
  $(".category-choice").click(function(){
    $(this).toggleClass("active");
  });
});

// $('#secondarybtn').click(function(){
//   console.log("clicked")
//     $("#primarybtn").click();
// })




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
