jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
  
  # fadeOut all alerts after 3 seconds
  $('.alert').delay(3000).fadeOut('fast')