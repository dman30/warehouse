# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->

  $('#articles').dataTable
    sPaginationType: "bootstrap"

  $('#article_purchase_date').datepicker
    format: 'yyyy-mm-dd'
    autoclose: true

  $('#article_warranty_expiration').datepicker
    format: 'yyyy-mm-dd'
    autoclose: true

  $('#article_installation_date').datepicker
    format: 'yyyy-mm-dd'
    autoclose: true

