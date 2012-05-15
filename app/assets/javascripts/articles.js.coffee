# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	# show details in right #details div
	$('.article_link').live
		click: (e) ->
			path = $(@).attr 'href'
			e.preventDefault()
			$('#details').load(path)

	$('.edit').live
		click: (e) ->
			path = $(@).attr 'href'
			e.preventDefault()
			$('#content').load(path)

	# attach jquery datepicker to article form
	$('#article_purchase_date').datepicker()
	$('#article_warranty_expiration').datepicker()
	$('#article_installation_date').datepicker()

	# open modal dialog to create article
	# $('#create_article').live
	# 	click: (e) ->
	# 		e.preventDefault()
	# 		path = $(@).attr 'href'
	# 		$('#myModal').load(path)
	# 		$('#myModal').modal ->
	# 			show: true
	# try to catch submit form button and do sth useful
	# $('input#submit_form').live
	# 	click: (e) ->
	# 		e.preventDefault()
	# 		$('modal-form').submit()



	