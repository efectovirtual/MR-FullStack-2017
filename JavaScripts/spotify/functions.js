

//  <audio controls>
//   <source src="horse.mp3" type="audio/mpeg">
// </audio> 


$(document).ready(function(){
  
  var buscarSpotify = function(busquedaQ) {

    var accessToken = 'BQAoq1Rb6EzmEgB4i3jK9OeYDwYE0A8t8qTPEgZoKZO_CBqfgOrbzYfEyCxfZ7RTD59JJ8XJ4kFXYojJYVBM5WQFZgqGS6vdXWufF8LIBv9dHSv2Y0C5swFGQ-_7YfF3mL4gBCqAK3e604A81aM0xsCHpH57cafayHGfo4A';
    
    $.ajax({
       url: 'https://api.spotify.com/v1/search',
       method: "GET",
       dataType: 'json',
       data: {q: busquedaQ, type: 'track,artist'},
       headers: {
           'Authorization': 'Bearer ' + accessToken
       },                    
       success: function(data) {  

          var a = data.tracks.items;              
          var i = 0

          while( i<= a.length){

            var img = a[i].album.images[0].url;
            var tabla = '<img src="' + img + '" alt=""><br>';

            $('.content').append(tabla);
            i+=1;          
          }
       }
    });  
  } 


  $('#buscadorC').on('keyup', function(e) {

        $('.content').html('');
        var busqueda = $(this).val();
        
        if (e.which === 13) {
          buscarSpotify(busqueda);
        }

  });


});






// https://stackoverflow.com/questions/26612749/search-for-track-using-spotify-api-add-in-album-name-and-artist-name


// $(document).ready(function(){


// var buscarSpotify = function(busquedaQ) {
//   var template = Handlebars.compile($('#contenido-spotify').html());

 
//   var accessToken = 'BQAoq1Rb6EzmEgB4i3jK9OeYDwYE0A8t8qTPEgZoKZO_CBqfgOrbzYfEyCxfZ7RTD59JJ8XJ4kFXYojJYVBM5WQFZgqGS6vdXWufF8LIBv9dHSv2Y0C5swFGQ-_7YfF3mL4gBCqAK3e604A81aM0xsCHpH57cafayHGfo4A';

//    $.ajax({
//      url: 'https://api.spotify.com/v1/search',
//      dataType: 'json',
//      method: "GET",
//      data: {q: busquedaQ, type: 'track,artist'},
//      headers: {
//          'Authorization': 'Bearer ' + accessToken
//      },                    
//      success: function(data) {       

//         // var a = data.tracks.items;
//         // var img = a[i].album.images[0].url;
//         $('.content').append(template({ spotifyC: data }));
                      
//      }
//   }); 


// }



//     $('#buscadorC').on('keyup', function(e) {

//       $('.content').html('');
//       var busqueda = $(this).val();
      
//       if (e.which === 13) {
//         buscarSpotify(busqueda);
//       }

//   });


// });