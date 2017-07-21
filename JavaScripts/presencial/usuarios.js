// $(document).ready(function(){

//   function paintUser(data){
//     var users = data.results
//     var usersData = users.map(function(user){
//       var fullNameHi = $('<h1></h1>').text(user.name.first + ' ' + user.name.last)

//       var credentials = $('<div></div>', {class: 'credentials'} )
//         .append(emailTag)
//         .append(usernameTag)
//         .append(passwordTag)

//       var imageTag


//     })

//   }

// });


 // $.ajax({
 //    method: 'GET',
 //    url: 'https://randomuser.me/api/?results=5&inc=name,picture,email,login',
 //    dataType: 'json'
 //  })
 //  .done(function(data){

$(document).ready(function(){
  
$.ajax({
  url: 'https://randomuser.me/api/?results=5&inc=name,picture,email,login',
  dataType: 'json',
  success: function(data) {

    var usuarios = data.results

    var tabla = "<table>";

      tabla += "<tr>";
      tabla += " <th>Imagen</th>";
      tabla += " <th>Nombre</th>";
      tabla += " <th>Email</th>";
      tabla += " <th>Login</th>";
      tabla += "</tr>";

  console.log(usuarios);

  for(var i=0; i < usuarios.length; i++){
      tabla += "<tr>";
      tabla += "  <td> <img src='" + usuarios[i].picture.thumbnail + "'></td>";
      tabla += "  <td>" + usuarios[i].name.first + ' '+ usuarios[i].name.last + "</td>";
      tabla += "  <td>" + usuarios[i].email + "</td>";
      tabla += "  <td>" + usuarios[i].login.username + "</td>";
      tabla += "</tr>"; 
  }

  tabla += "</table>";
                    
    $(".usuarios").on("click",'button',function(){
      $(".usuarios").append(tabla);
      $("button").remove();
    });

    }
  })

});