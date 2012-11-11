
(function() {
  var page = 1,
      loading = false;

  function nearBottomOfPage() {
    return $(window).scrollTop() > $(document).height() - $(window).height() - 200;
  }

  $(window).scroll(function(){
    if (loading) {
      return;
    }

    if(nearBottomOfPage()) {
      loading=true;
      $("#paginate_loading").show();
      $(".pagination").hide();
      page++;
      $.ajax({
        url: '/schedules?page=' + page,
        type: 'get',
        dataType: 'script',
        success: function() {
          $("#paginate_loading").hide();
          $(window).sausage('draw');
          loading=false;
        }
      });
    }
  });

  $(window).sausage();
}());
