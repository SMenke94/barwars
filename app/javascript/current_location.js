navigator.geolocation.getCurrentPosition(function(position) {
  const lat = position.coords.latitude;
  const lng = position.coords.longitude;
  console.log(lat);
  console.log(lng);
  raise
});
