$(document).ready(function(){

  var NGame = []


// Comprobamos su existe algun número repetido dentro del array
  Array.prototype.unique = function(){
      var tmp = {}, out = [];
      for(var i = 0, n = this.length; i < n; ++i){
          if(!tmp[this[i]]) { tmp[this[i]] = true; out.push(this[i]); }
      } return out;
  }





//  Generamos un número aletorio dentro de un array
  var numeroAletorio = function(){
    var numero = []

    for(var i=0; i<4; i++){
      numero[i] = Math.floor((Math.random() * 9) + 1);
    }
    return numero.unique()
  }





// Si no contiene 4 número genere otro nuevo, si esta icompleto es por que estaba repetido
  var comprobarNumeroAletorio = function(){
      var nAletorio = numeroAletorio()
      while(nAletorio.length != 4){
        nAletorio = numeroAletorio()
      }
      return nAletorio
  }







// Sumamos las filas y las picas y arrojamos el resultado en un objeto
  var comprobarPicasFilas = function(nJuego,nUsuario){

    var numeroJuego = nJuego

    var numeroUsuario = nUsuario.split("")
    var picas = 0
    var filas = 0

    numeroJuego.forEach(function(n,i){
      if (numeroUsuario[i] == numeroJuego[i]) { picas++ }

        numeroJuego.forEach(function(n2,j){
          if (numeroUsuario[i] == numeroJuego[j] && numeroUsuario[i] != numeroJuego[i] ) { filas++ }
        })

    })

      var resultado = { p: picas , f: filas };
      // console.log('Picas: '+ picas +' - Filas: '+ filas)
      return resultado
  }







var dibujarResultados = function(nUsuario, resultadoJuego){

    var mostrarR = '';
      mostrarR += '<div class="row">';
      mostrarR += '  <div class="col-xs-4">'+nUsuario+'</div>';
      mostrarR += '  <div class="col-xs-4">'+resultadoJuego.p+'</div>';
      mostrarR += '  <div class="col-xs-4">'+resultadoJuego.f+'</div>';
      mostrarR += '</div>';


    $('#mostrar-resultado').append(mostrarR);

    if (resultadoJuego.p == 4) {ganastesSiNo()}    

}





// Comprovamos que los numeros ingresados sean correctos
var comprobarDatosIngresados = function(nUsuario){

  $('#pifi').val(''); // Limpiamos el campo
  $('.erroresDatos').text('');


  var numero = nUsuario.split('')

  if (numero.length != 4) {
    $('.erroresDatos').text('Debes ingresar un número de 4 Dígitos');
  }else if (numero.unique().length != 4) {
    $('.erroresDatos').text('Los números no pueden ser repetidos');
  }else{
    return true;
  }


}





  var ganastesSiNo = function(){

    $('.infoGanastes').find('strong').append(NGame);
    $('.bgGanastes').addClass('mostrarGanastes')
  }





  var juegoPF = function(nUsuario){

    if (comprobarDatosIngresados(nUsuario)) {

        if (NGame.length != 4) { 
          NGame = comprobarNumeroAletorio();
          console.log(NGame); // Mostramos el número que Genera el juego      
        }

        var resultadoJuego = comprobarPicasFilas(NGame,nUsuario)

        dibujarResultados(nUsuario, resultadoJuego)
    }

  }





// Al precionar Enter en el Input iniciamos el Juego
  $('#pifi').on('keyup', function(e){
    var numero = $(this).val()

    if (e.which === 13) {
      juegoPF(numero)
    }

  }); // Fin #pifi






$('.infoGanastes').find('button').on('click',function(){
  location.reload(); //Recargamos la página
})
 


}); // Fin Document Ready

 