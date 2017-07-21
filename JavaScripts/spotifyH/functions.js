


// https://stackoverflow.com/questions/26612749/search-for-track-using-spotify-api-add-in-album-name-and-artist-name
// https://www.youtube.com/watch?v=MbG5ONiRYxg

$(document).ready(function(){


var buscarSpotify = function(busquedaQ) {

var template = Handlebars.compile($('#contenido-spotify').html());
 
  var accessToken = 'BQAoIsZLZv5d0w7XSZBDhbaahAD3Vyvv4SIm41FWIkqqAPWLYp5jdMmuwnpuKbJwhbMLRFkHdajA9s7k8KBe-q-fpfqVYtEGTG7SkRVtOXNVFTSmJNc_G5kMKWnLmsrwBqxT6fzB6QB9DpMjW2xaSNhiReXzYhTJJEBHNUE';

   $.ajax({
     url: 'https://api.spotify.com/v1/search',
     dataType: 'json',
     method: "GET",
     data: {q: busquedaQ, type: 'track,artist'},
     headers: {
         'Authorization': 'Bearer ' + accessToken
     },                    
     success: function(data) {   



        // var a = data.tracks.items;
        // var img = a[i].album.images[0].url;
        $('.content').append(template(data));
                      
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