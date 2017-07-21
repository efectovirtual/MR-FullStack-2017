 $(document).ready(function(){

  var precioTotal = 0.00;


  $('.producto').on("click","button",function(){

    // debugger

    var imagen = $(this).parents('.producto').find('.img-producto').attr("src");    
    // var titulo = $(this).parents('.producto').find('.nombre-producto').html();
    var titulo = $(this).parents('.producto').find('.nombre-producto').text();
    var precio = $(this).parents('.producto').find('.precio-producto').html();

    var productoN = '<div class="row productonuevo">';
    productoN += '<div class="col-md-3"><img class="img-thumbnail" src="' + imagen + '"></div>';
    productoN += '<div class="col-md-5"><p>' + titulo + '</p></div>';
    productoN += '<div class="col-md-2"><p class="precio-productoTotal">' +  precio + '</p></div>';
    productoN += '<div class="col-md-2">';
    productoN += '<button type="button" class="btn btn-danger">Eliminar</button>';
    productoN += '</div>';
    productoN += '</div>';


    $(".total-productos").remove();
    $(".productos-carrito").append(productoN);

    // var regexp = /\d+/;
    // var precioPro = regexp.exec(precio)

    precioPro = Number(precio.substring(1, precio.length));

    precioTotal += precioPro;

    var totalP = '<div class="row total-productos">';
    totalP += '<div class="col-md-4 col-md-offset-8">';
    totalP += '<h2> Total: $' + precioTotal.toFixed(3); + '</h2>';
    totalP += '</div>';
    totalP += '</div>';

    $(".productos-carrito").append(totalP);


  });


  $('.productos-carrito').on("click","button",function(){

      // $(this).parents('.productonuevo').remove();

        $(this).parents('.productonuevo').fadeOut(300, function(){
         $(this).remove();
       });

      $(".total-productos").remove();


      var precio = $(this).parents('.productonuevo').find('.precio-productoTotal').html();

      precioPro = Number(precio.substring(1, precio.length));
      precioTotal -= precioPro;

      var totalP = '<div class="row total-productos">';
      totalP += '<div class="col-md-4 col-md-offset-8">';
      totalP += '<h2> Total: $' + precioTotal.toFixed(3); + '</h2>';
      totalP += '</div>';
      totalP += '</div>';

      $(".productos-carrito").append(totalP);


    });

});
