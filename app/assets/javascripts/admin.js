$(function(){
  $("#admin-panel-toggle").click(function(event){
    $("nav.admin-features").toggleClass("admin-features-open");
    $("#app-content").toggleClass("to-right");
  });
});
