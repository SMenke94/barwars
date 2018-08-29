// Sliding toggle on filter box

$("#filter-button").click(function () {
  if ($("#show-filters").hasClass("slideup"))
    $("#show-filters").removeClass("slideup").addClass("slidedown");
  else
    $("#show-filters").removeClass("slidedown").addClass("slideup");
});

jQuery(document).ready(function($) {
  $(function() {
    $("#sliders-container").append("<div class='scroll_down_holder'><i class='fa fa-angle-down' aria-hidden='true'></i></div>");
    $(".scroll_down_holder").click(function() {
      $("html, body").animate({
        scrollTop: $('#sliders-container').prop("scrollHeight")
      }, 1000);
    });
  });
});
