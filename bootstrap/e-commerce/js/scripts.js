  jQuery(function ($) {


  	// carousel
    $('.carousel').carousel()


	// Modal
	$('#camisaModal').on('shown.bs.modal', function () {
	  $('#myInput').focus()
	})


	// Tabs
	$('#descripcion a').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})

	$('#comentarios a').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})





});