$(document).ready(function() {
  $("button").click(function(){
    $("img").animate({
      height: 'toggle'
    });
  });
});

$(document).ready(function() {
  $("#panel_one").click(function() {
    $("#panel_two").slideDown("slow");
  });
});
