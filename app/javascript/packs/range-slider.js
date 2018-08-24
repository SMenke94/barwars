var rangeSlider = function(){
  var slider = $('.range-slider'),
      range = $('.range-slider__range'),
      value = $('.range-slider__value');

  slider.each(function(){

    value.each(function(){
      var value = $(this).prev().attr('value');
      $(this).html(value);
    });

    range.on('input', function(){
      $(this).next(value).html(this.value);
    });
  });
};

rangeSlider();

$('#show-map').on('click', function(){
  $('#map').toggleClass("is-visible");
});


(function(){
      var words = [
          '<i class="fas fa-beer"></i>',
          '<i class="fas fa-glass-martini"></i>',
          '<i class="fab fa-bitbucket"></i>',
          '<i class="fas fa-wine-glass-alt"></i>',
          ], i = 0;
      setInterval(function(){
          $('#changingword').fadeOut(function(){
              $(this).html(words[i=(i+1)%words.length]).fadeIn();
          });
      }, 3000);

  })();
