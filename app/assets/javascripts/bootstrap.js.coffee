jQuery ->
  $("a[rel=popover]").popover()
  $(".tooltip").tooltip()
  $("a[rel=tooltip]").tooltip()
  
  # fadeOut success alerts after 3 seconds
  $('.alert-success').delay(3000).fadeOut('fast')