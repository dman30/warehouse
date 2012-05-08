# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	$('.producer_link').on
		click: (e) ->
			path = $(@).attr 'href'
			e.preventDefault()
			$('#details').load(path)