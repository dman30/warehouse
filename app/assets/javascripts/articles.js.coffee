# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	# show details in right #details div
	# $('.article_link').live
	# 	click: (e) ->
	# 		path = $(@).attr 'href'
	# 		e.preventDefault()
	# 		$('#details').load(path)

	# show edit form in right #details div
	# $('.edit').live
	# 	click: (e) ->
	# 		path = $(@).attr 'href'
	# 		e.preventDefault()
	# 		$('#content').load(path)

	# attach jquery datepicker to article form
	$('#article_purchase_date').datepicker({
		format: 'yyyy-mm-dd'
		autoclose: true
		})
	# $('#article_purchase_date').live
	# 	focus: (e) ->
	# 		$(@).datepicker(
	# 			# showOn: 'focus'
	# 			format: 'dd.mm.yyyy'
	# 			autoclose: true
	# 			language: 'de'
	# 		).focus()

	$('#article_warranty_expiration').datepicker({
		format: 'yyyy-mm-dd'
		autoclose: true
		})
	# $('#article_warranty_expiration').live
	# 	focus: (e) -> 
	# 		$(@).datepicker(
	# 			# showOn: 'focus'
	# 			format: 'dd.mm.yyyy'
	# 			autoclose: true
	# 			language: 'de'
	# 		).focus()

	$('#article_installation_date').datepicker({
		format: 'yyyy-mm-dd'
		autoclose: true
		})

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



	