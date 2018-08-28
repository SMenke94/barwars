// Sliding toggle on filter box

$("#filter-button").click(function () {
  if ($("#show-filters").hasClass("slideup"))
    $("#show-filters").removeClass("slideup").addClass("slidedown");
  else
    $("#show-filters").removeClass("slidedown").addClass("slideup");
});
