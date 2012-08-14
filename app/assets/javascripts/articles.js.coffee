# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->

  $('#articles').dataTable
    sPaginationType: "bootstrap"
    oLanguage:
      sInfo: "Einträge _START_ bis _END_ von insgesamt _TOTAL_"
      sInfoEmpty: "Keine Einträge"
      sInfoFiltered: " - gefiltert von _MAX_ Einträgen"
      sInfoThousands: "."
      # sLengthMenu: "Zeige _MENU_ Einträge"
      sLengthMenu: 'Zeige <select>' +
        '<option value="1">1</option>' +
        '<option value="5">5</option>' +
        '<option value="10">10</option>' +
        '<select> Einträge'
      sLoadingRecords: "Daten werden geladen..."
      sSearch: "Filter:"
      sZeroRecords: "Keine passenden Einträge gefunden"
      oPaginate:
        sNext: "Nächste"
        sPrevious: "Vorherige"

  $('#article_purchase_date').datepicker
    format: 'yyyy-mm-dd'
    autoclose: true

  $('#article_warranty_expiration').datepicker
    format: 'yyyy-mm-dd'
    autoclose: true

  $('#article_installation_date').datepicker
    format: 'yyyy-mm-dd'
    autoclose: true

  $('.dropdown-toggle').dropdown()
