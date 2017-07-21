// var cust;

//   function customer(){

//     $.ajax({
//       url: "https://reqres.in/api/users",
//       method: "POST",
//       data: {
//           username: "AlbertoRD",
//           password: "1234567"
//       },
//       success: function(data){
//          return data;
//       }
//   });

//   }

// alert(customer());

// function order(customer){
//   $.ajax({
//       url: "https://reqres.in/api/users",
//       method: "POST",
//       data: {
//           total: "AlbertoRD",
//           customer: customer.id,
//           state: 'pending'
//       },
//       success: function(data){
//          console.log(data);
//       }
//   });
// }


var 

function createCustomer(data){

  return $.ajax({
      url: "https://reqres.in/api/customer",
      method: "POST",
      data: data
  });
}


function createOrderItem(data){
  return $.ajax({
      url: "https://reqres.in/api/items",
      method: "POST",
      data: data
  });
}


function updateOrder(order){
  return $.ajax({
      url: "https://reqres.in/api/order",
      method: "PATCH",
      data: order
  });

}

function fullFlow(customerData, orderData, itemsData){
  var customer
  var order
  var items

  return createCustomer(customerData){
    .then(function (createdCustomer){
      customer = createdCustomer
      return createOrder(orderData)
    })
    .then(function(){

    })
  }
}

fullFlow()
// order(customerD)

// $.ajax({
//     url: "https://reqres.in/api/users",
//     type: "POST",
//     data: {
//         name: "paul rudd",
//         movies: ["I Love You Man", "Role Models"]
//     },
//     success: function(response){
//         console.log(response);
//     }
// });
  


// Codigo asincrono secuencial con objetos then, jquery no tiene promesas realmente, la promesa es el callback

// var promise = new Promise(function(resolve, reject){
//   resolve = 5
//   resject(new Error('WoW'))

// })
// .then(function(){})
// .then(function(){})
// .then(function(){})

// then devuelve el objeto, sino devuelve el ajax

