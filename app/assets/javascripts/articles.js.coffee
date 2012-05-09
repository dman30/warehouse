# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
	# show details in right #details div
	$('.article_link').on
		click: (e) ->
			path = $(@).attr 'href'
			e.preventDefault()
			$('#details').load(path)

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



	