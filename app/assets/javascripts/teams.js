$(function(){
  $('select[data-fetch-logo]').on('change', function() {
    var teamId = $(this).val();
    var target = $(this).data("fetch-logo");
    $.ajax({
      url: '/teams/'+teamId+".json",
      type: "GET",
      success: function (data) {
        $(target).html("<img src="+data.logo+"/>")
      }
    });
  });
});
