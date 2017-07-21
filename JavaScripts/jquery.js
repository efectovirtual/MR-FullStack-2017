 

 // Pestañas - Tabs

 $(document).ready(function() {
  $(".tabs").on("click","li",function () {
    var taburl = $(this).find("a").attr("href");
    $("li").removeClass("active");
    $(".tabs-content").find("div").removeClass("active");
    $(this).addClass("active");
    $(".tabs-content").find(taburl).addClass("active");
  });
});












// Eliminar Tareas 
// http://www.elbauldelcodigo.com/como-obtener-padres-hijos-hermanos-en-jquery/5/0

 $(document).ready(function(){

  $(".todo").on("click",".delete",function(){
    $(this).parent('li').remove();
  });
  
  $(".done").on("click",".delete",function(){
    $(this).parent('li').remove();
  });
  
  $('.todo').on('click', 'li', function(e) {
    if (e.target == this){
      $(this).appendTo('.done');
    }
  });

  $('.done').on('click', 'li', function(e) {
    if (e.target == this){
      $(this).appendTo('.todo');
    }
  });

  

// Mejor respuesta

$('.todo').on('click', 'li', function() {
  $(this).appendTo('.done');
});

$('.done').on('click', 'li', function() {
  $(this).appendTo('.todo');
});

$('ul').on('click', ".delete", function(e) {
  e.stopPropagation();
  $(this).parent().remove();
});










//  Carros
     
    // <script id="carrosID" type="text/x-handlebars-template">
    
    // {{#each carros}}
    
    //   <div class="row car">
      
    //     <div class="col-sm-5 col-md-4"><img src="{{this.imageUrl}}" class="img-responsive img-thumbnail"></div>
    //     <div class="col-sm-7 col-md-8">
    //       <h3>{{this.name}}<small>{{this.released}}</small></h3>
    //       <div class="row specs">
    //         <div class="col-xs-3 text-center">
    //           <span class="spec-value">{{this.power}} hp</span>
    //           <span class="spec-label">Potencia</span>
    //         </div>
    //         <div class="col-xs-3 text-center">
    //           <span class="spec-value">{{this.weight}} kg</span>
    //           <span class="spec-label">Peso</span>
    //         </div>
    //         <div class="col-xs-3 text-center">
    //           <span class="spec-value">{{this.turbo}}</span>
    //           <span class="spec-label">Turbo</span>
    //         </div>
    //         <div class="col-xs-3 text-center">
    //           <span class="spec-value">{{this.speed}} km/h</span>
    //           <span class="spec-label">Velocidad Max</span>
    //         </div>
    //       </div>
    //     </div>
        
    //  </div>
     
    // {{/each}}
    
    // </script>


var mostrarCarros = function() {
  var template = Handlebars.compile($('#contenido-spotify').html());

  $.getJSON("https://s3.amazonaws.com/makeitreal/cars.json", function(data) {

    $('button').replaceWith(template({ carros: data }));

  });
}


$('button').on('click', function(e) {
  mostrarCarros();
  $(this).remove();
});



//  Otra forma


// <script id="cars-template" type="text/x-handlebars-template">
//   {{#each cars}}
//   <div class="row car">
//     <div class="col-sm-5 col-md-4"><img src="{{this.imageUrl}}" class="img-responsive img-thumbnail"></div>
//     <div class="col-sm-7 col-md-8">
//       <h3>{{this.name}} <small>{{this.released}}</small></h3>
//       <div class="row specs">
//         <div class="col-xs-3 text-center">
//           <span class="spec-value">{{this.power}} hp</span>
//           <span class="spec-label">Potencia</span>
//         </div>
//         <div class="col-xs-3 text-center">
//           <span class="spec-value">{{this.weight}} kg</span>
//           <span class="spec-label">Peso</span>
//         </div>
//         <div class="col-xs-3 text-center">
//           <span class="spec-value">{{#if this.turbo}}Si{{/if}}</span>
//           <span class="spec-label">Turbo</span>
//         </div>
//         <div class="col-xs-3 text-center">
//           <span class="spec-value">{{this.speed}} km/h</span>
//           <span class="spec-label">Velocidad Max</span>
//         </div>
//       </div>
//     </div>
//   </div>
//   {{/each}}
// </script>

var showCars = function() {
  var template = Handlebars.compile($('#cars-template').html());
    $.getJSON('https://s3.amazonaws.com/makeitreal/cars.json', function(cars) {
    $('.cars').append(template({ cars: cars }));
  });
}

$('button').on('click', function() {
  showCars();
  $(this).remove();
});



// <script id="cars-template" type="text/x-handlebars-template">
//   {{#each cars}}
//   <div class="row car">
//     <div class="col-sm-5 col-md-4"><img src="{{this.imageUrl}}" class="img-responsive img-thumbnail"></div>
//     <div class="col-sm-7 col-md-8">
//       <h3>{{this.name}} <small>{{this.released}}</small></h3>
//       <div class="row specs">
//         <div class="col-xs-3 text-center">
//           <span class="spec-value">{{this.power}} hp</span>
//           <span class="spec-label">Potencia</span>
//         </div>
//         <div class="col-xs-3 text-center">
//           <span class="spec-value">{{this.weight}} kg</span>
//           <span class="spec-label">Peso</span>
//         </div>
//         <div class="col-xs-3 text-center">
//           <span class="spec-value">{{#if this.turbo}}Si{{/if}}</span>
//           <span class="spec-label">Turbo</span>
//         </div>
//         <div class="col-xs-3 text-center">
//           <span class="spec-value">{{this.speed}} km/h</span>
//           <span class="spec-label">Velocidad Max</span>
//         </div>
//       </div>
//     </div>
//   </div>
//   {{/each}}
// </script>

// <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
// <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.3/handlebars.min.js"></script>
// <script src="app.js"></script>





// Forma larga Paises - Json y AJAX

$(document).ready(function(){

  $.ajax({
    method: 'GET',
    url: 'https://s3.amazonaws.com/makeitreal/countries.json',
    dataType: 'json'
  })
  .done(function(data){
    
    var countries = data
    
    var tabla = "<table>";
    tabla += "<tr>";
    tabla += " <th>Flag</th>";
    tabla += " <th>Code</th>";
    tabla += " <th>Name</th>";
    tabla += "</tr>";

  for(var i=0; i < countries.length; i++){
    tabla += "<tr>";
    tabla += "  <td> <img src='" + countries[i].flag_url + "'></td>";
    tabla += "  <td>" + countries[i].code + "</td>";
    tabla += "  <td>" + countries[i].name + "</td>";
    tabla += "</tr>"; 
  }

    tabla += "</table>";
                    
    $(".wrapper").on("click",'button',function(){
      $(".wrapper").append(tabla);
      $("button").remove();
    });

  })

});

// Mejor Forma

// <script id="countries-template" type="text/x-handlebars-template">
//   <table>
//     <tr>
//       <th>Flag</th>
//       <th>Code</th>
//       <th>Name</th>
//     </tr>
//     {{#each countries}}
//     <tr>
//       <td><img src="{{this.flag_url}}" alt="Colombia"></td>
//       <td>{{this.code}}</td>
//       <td>{{this.name}}</td>
//     </tr>
//     {{/each}}
//   </table>
// </script>

// <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
// <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.3/handlebars.min.js"></script>
// <script src="app.js"></script>


var showCountries = function() {
  var template = Handlebars.compile($('#countries-template').html());

  $.getJSON("https://s3.amazonaws.com/makeitreal/countries.json", function(data) {
    $('button').replaceWith(template({ countries: data }));
  });
}

$('button').on('click', function(e) {
  showCountries();
});



// Otra solución más rapida:
$(document).ready(function(){
   $("button").click(function(evento){
      evento.preventDefault();
      $(".wrapper").load("http://s3.amazonaws.com/makeitreal/countries.html");
   });
})







// Paises - Json - Recorriendo objetos y pasando a una tabla
//https://makeitreal.camp/subjects/jquery-y-ajax/challenges/paises/discussion

$(document).ready(function(){

var countries = [
  { "code": "CO", "name": "Colombia", "flag_url": "https://s3.amazonaws.com/makeitreal/co.gif" },
  { "code": "PE", "name": "Perú", "flag_url": "https://s3.amazonaws.com/makeitreal/pe.gif" },
  { "code": "EC", "name": "Ecuador", "flag_url": "https://s3.amazonaws.com/makeitreal/ec.gif" },
  { "code": "BO", "name": "Bolivia", "flag_url": "https://s3.amazonaws.com/makeitreal/bo.gif" }
];


var tabla = "<table>";

  tabla += "<tr>";
  tabla += " <th>Flag</th>";
  tabla += " <th>Code</th>";
  tabla += " <th>Name</th>";
  tabla += "</tr>";

for(var i=0; i < countries.length; i++){
  tabla += "<tr>";
  tabla += "  <td>" + countries[i].code + "</td>";
  tabla += "  <td>" + countries[i].name + "</td>";
  tabla += "  <td> <img src='" + countries[i].flag_url + "'></td>";
  tabla += "</tr>"; 
}

tabla += "</table>";
                  
                  
  $("button").on("click",function(){
    $(".wrapper").append(tabla);
    $(this).remove();
  });
  
});













// Lista de invitados - Pasar información de un form a una tabla

// Usar http://handlebarsjs.com/

$(document).ready(function(){

  $("form").on("submit",function(e){
    e.preventDefault();
    
    var fn = $("#first-name").val();
    var ln = $("#last-name").val();
    var mn = $("#mobile-number").val();
    var cf = "";
    
    if($('input#confirmed').is(':checked')) {
       cf = '<span class="glyphicon glyphicon-ok"></span>';
    }    
      
    var nrow ='';
    nrow += '<tr>';
    nrow += '<td>' + fn + '</td>';
    nrow += '<td>' + ln + '</td>';
    nrow += '<td>' + mn + '</td>';
    nrow += '<td>' + cf + '</td>';
    nrow += '</tr>';
    
    $(".table").find("tbody").append(nrow);
    
    $('input:checkbox').removeAttr('checked'); // Remueve los atributos del checkbox

    $('.modal').modal('hide');
                           
  });

});











// Formulario de Registro -  Validar usuario, contraseña y Checkbox
$('form').on('submit', function(e) {
  e.preventDefault(); // previene la acción por defecto (enviar el formulario)
  
  var cuser = $("#username").val();
  if(/\s/.test(cuser)==true || cuser == ""){
    $(".usuariov").addClass("has-error");
  }else{ $(".usuariov").removeClass("has-error"); }
  
  var cpass = $("#password").val();
  if(cpass.length<6 || cpass.length>40 || cpass == ""){
    $(".contrasenav").addClass("has-error");
  }else{ $(".contrasenav").removeClass("has-error");}
  
  if ($('input#terms').is(':checked')) {
    $(".terms-checkbox").removeClass("has-error");
  }else{$(".terms-checkbox").addClass("has-error");}
});  


// Otra solución
$('form').on('submit', function(e) {
  e.preventDefault();

  if ($('#username').val() == "") {
    $('#username').parent().addClass("has-error");
    $('#username').siblings('p').html('Ingresa un usuario');
  } else if ($('#username').val().indexOf(" ") != -1) {
    $('#username').parent().addClass("has-error");
    $('#username').siblings('p').html('No puede contener espacios');
  } else {
    // hide error
    $('#username').parent().removeClass("has-error");
    $('#username').siblings('p').html('');
  }

  if ($('#password').val() == "") {
    $('#password').parent().addClass('has-error');
    $('#password').siblings('p').html("Ingresa una contraseña");
  } else if ($('#password').val().length < 6) {
    $('#password').parent().addClass('has-error');
    $('#password').siblings('p').html("Debe contener mínimo 6 caracteres");
  } else if ($('#password').val().length > 40) {
    $('#password').parent().addClass('has-error');
    $('#password').siblings('p').html("Debe contener máximo 40 caracteres");
  } else {
    // hide error
    $('#password').parent().removeClass('has-error');
    $('#password').siblings('p').html("");
  }

  if (!$('#terms').is(":checked")) {
    $('.checkbox').addClass('has-error');
  } else {
    // hide error
    $('.checkbox').removeClass('has-error');
  }
});












// Más tareas - Pasar texto de input a lista de tareas 


  $(document).ready(function(){
   $("#keypress").keypress(function(e){
     if(e.which == 13) {
       $("ul.todo").append("<li>" + $(this).val() + "</li>");
       $(this).val("");
     }
   })
});

  // Otra solución
  $('#new-task').on('keyup', function(e) {
  if (e.which === 13) {
    $('.todo').append("<li>" + $(this).val() + "</li>");
    $(this).val('');
  }
});












// Tareas - Crear y remover objeto --------------------


$(document).ready(function(){

  $("ul.todo").on("click","li",function(){
    var ttodo = $(this).text();
    $(this).remove();
    $(".done").append("<li>"+ttodo+"</li>");
    
  });
  
  $("ul.done").on("click","li",function(){
    var dtodo = $(this).text();
    $(this).remove();
    $(".todo").append("<li>"+dtodo+"</li>");
  });
  
});

// Mejor solución

$('.todo').on('click', 'li', function() {
  $(this).appendTo('.done');
});

$('.done').on('click', 'li', function() {
  $(this).appendTo('.todo');
});

// otra solución
$('li').on('click', function() {
  if ($(this).parent().hasClass('todo')) {
    $(this).appendTo('.done');
  } else {
    $(this).appendTo('.todo') ;
  }
});











// Elementos Crear y asignar clase --------------------


$(document).ready(function(){
  
  var i = 0;
  
  $("#add").on("click",function(){
    $(".elements").append("<li>Elemento " + i +"</li>");
    i++;
  });
  
  $('.list').on('click',"li", function(){
    if($(this).hasClass('marked')){
      $(this).removeClass('marked');
    }else{
      $(this).addClass('marked');
    }
  });
  
});


// Otra solución.
$('.elements').on('click', 'li', function() {
  $(this).toggleClass('marked');
});

var index = 0;
$('#add').on('click', function() {
  $('.elements').append('<li>Elemento ' + index + '</li>');
  index++;
});











//   Contador de caracteres ! --------------------


$(document).ready(function(){
    $("textarea").keyup(function() {
        var limit   = 80; 
        var value   = $(this).val();             
        var current = value.length;
        $(".counter").text(current);   
        if (current > limit) {                   
           $(".container").addClass("error");
         }
     });
 });

// Otra forma
$('textarea').on('keyup', function() {
  var count = $(this).val().length;
  $('.counter').html(count);
  if (count > 80) {
    $('.container').addClass('error');
  } else {
    $('.container').removeClass('error');
  }
});












//  ¡Salúdame! --------------------



$(document).ready(function(){
    $("#input").keyup(function() {
        var value   = $(this).val();             
        $( "h1" ).text("Hola " + value + "!");              
     });
 });



// Otra solución
$(document).ready(function(){
$('#input').on('keyup', function(e) {
  $('h1').html("Hola " + $(this).val() + "!");

  if ($(this).val() === '') {
    $('h1').html('¿Cómo te llamas?');
  }
});
 });



// --------------------




$("#append").click(function () {
  $(".squares").append('<div class="square"></div>');
});



// Otra solución
$('#append').on('click', function() {
  $('.squares').append('<div class="square"></div>');
});

$('#append').on('click', function() {
  $('<div class="square"></div>').appendTo('.squares');
});


// --------------------



$(document).click(function() {
    $('.square.blue').css('background','yellow');
  });


// Otra forma
$('.blue').on('click', function() {
  $(this).css('background-color', 'yellow');
});

// --------------------



  $(document).keyup(function() {
    $('.circle').hide();
  });

  //$('.circle').css('display', 'none');
  //$('.circle').remove();


  // Incluir jQuery
   // <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
   // <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
   // <script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.3/handlebars.min.js"></script>
   //  <script src="app.js"></script>