$(function() {
  attach_ajax_click_handlers();
});

function attach_ajax_click_handlers() {
  $("a#increase-volume").click(function() {
    $.post('/volume/increase', function(data) {
      $("h1.volume").html(data).removeClass("volume-muted");
    });
    return false;
  });

  $("a#decrease-volume").click(function() {
    $.post('/volume/decrease', function(data) {
      $("h1.volume").html(data).removeClass("volume-muted");
    });
    return false;
  });

  $("a#mute-volume").click(function() {
    $.post('/volume/mute', function(data) {
      $("h1.volume").toggleClass("volume-muted");
    });
    return false;
  });

  $("a#sleep").click(function() {
    $.post('/computer/sleep', function() {});
    return false;
  });
}



