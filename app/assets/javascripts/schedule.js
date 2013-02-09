
(function() {
  var page = 1,
      loading = false,
      stop_it = false;

  function nearBottomOfPage() {
    return $(window).scrollTop() > $(document).height() - $(window).height() - 200;
  }
  
  function grabAnotherPage() {
    if (stop_it)
        return; 
    loading=true;
    $("#paginate_loading").show();
    $("nav.pagination").hide();
    page++;
    $.ajax({
      url: '/schedules/page/' + page,
      type: 'get',
      dataType: 'script',
      success: function() {
        $("#paginate_loading").hide();
        $(window).sausage('draw');
        loading=false;          
      },
      error: function() {
        $("#paginate_loading").hide();
        stop_it = true;
      }        
    });
  }

  $(window).scroll(function(){
    if (loading) {
      return;
    }

    if(nearBottomOfPage()) {
      if (stop_it)
          return; 
      grabAnotherPage();
    }
  });

  $(window).sausage();
  
  $(document).ready(function(){
    if ($("nav.pagination").is(":visible"))
      grabAnotherPage();
  });
}());
