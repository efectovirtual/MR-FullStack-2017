
// sume todos los valores para los que la función devuelva true


// function sumaTrue(arry,func){
//   var sum = 0
//   for(var i = 0; i < array.length; i++){
//     if ( func(array[i] ) ) {
//         sum += array[i]
//     }
//   }
//   return sum
// }

// sumaTrue([1,2,3,4,5,6,2,4],function(elem){
//   if (elem == 2) {
//       return true
//   }
// })


function sumByFilter(array,func){
  var sum = 0
  array.forEach(function(elem){
    if (func(elem)) {
      sum += elem
    }
  })
  return sum
}
sumByFilter([1,2,3,4,5,6,7], function(elem){
  return elem % 2 === 0
})


// Filter =====================================================


function myFilter(array,func){
  var tmp = []
  array.forEach(function(elem){
    if (func(elem)) {
      tmp.push(elem)
    }
  })
  return tmp
}

myFilter([1,2,3,4,5,6,7], function(elem){
  return elem % 2 === 0
})




// Crear un Map manual

function myForEach(array,func){
  for(var i = 0; i < array.length; i++){
    func(array[i],i)
  }
}

myForEach([1,2,3,4,5], function(elem, index){
  console.log('Index: ' + index + ' Element: ' + elem)
}) 

function myMap(array,func){
  var tmp = []
  myForEach(array, function(elem){
    tmp.push(func(elem))
  })
  return tmp
}

myMap([1,2,3,4,5], function(elem){
  return Math.pow(elem,2)
})

// ===============================================================
// Crear un forEach manual


// [1,2,3,4].forEach(function(a){
//   console.log(a)
// })


// function recorrido(){
//   for (var i = 0; i < this.length; i++){
//     return this[i]
//   }
// }

// function forEach1(array, fun1){
//   return fun1.call(array)
// }

// forEach1([1,2,3,4],recorrido)

function myForEach(array,func){
  for(var i = 0; i < array.length; i++){
    func(array[i],i)
  }
}

myForEach([1,2,3,4,5], function(elem, index){
  console.log('Index: ' + index + ' Element: ' + elem)
}) 

// ===============================================================

// ===============================================================
// function sayHi(var1){
//   return 'Hi ' + var1
// }

// function sayBy(var1){
//   return 'Bay ' + var1
// }

function sayHi(){
  return 'Hi ' + this.name
}

function sayBy(){
  return 'Bye ' + this.name
}


function sayHiAndBye(func1, func2, var1){
  // return func1(var1) + ' ' + func2(var1) 
  return func1.call(var1) + ' ' + func2.call(var1) 
}

sayHiAndBye(sayHi, sayBy, {name: 'Alberto'})

// ===============================================================


// Herarquia de Clases

function Person(){
  this.name = attrs.name
}


Function User(attrs){
  this.username = attrs.username
}
User.prototype = Object.create(Person.prototype)
User.prototype.constructor = User



// Function Customer(attrs){}
// // Customer.prototype = new User()
// Customer.prototype = Object.create(User.prototype)
// Customer.prototype.constructor = Customer


Function Employee(attrs){
  this.salary = attrs.salary
  this.call(this,attrs)
}
Employee.prototype = Object.create(User.prototype)
Employee.prototype.constructor = Employee



Function Manager(attrs){
  Employee.call(this,attrs)
}
Manager.prototype = Object.create(Employee.prototype)
Manager.prototype.constructor = Manager

var man = new Manager({
  salary: 10000000,
  username: 'jefesito',
  name: 'The Box'

})


// ===============================================================


// function Person(name, last_name){
//   this.name = name
//   this.last_name = last_name
// }

// Person.prototype.User = function(username, password){
//   this.username = username
//   this.password = password
// }

// User.prototype = Object.create(Person.prototype)
// User.prototype.constructor = User

// User.prototype.Customer = function(contracts){
//   this.contracts = contracts
// }

// User.prototype.Employee = function(salary){
//   this.salary = salary
// }

// Employee.prototype.manager = function(subordinates){
//   this.subordinates = subordinates
// }






// split
// splice
// shift
// unshift
// push


function PostNotFoundError(message){
  this.message = message
  Error.captureStackTrace(this, this.constructor)
}

PostNotFoundError.prototype = Object.create(Error.prototype)
PostNotFoundError.prototype.constructor = PostNotFoundError

function Author(email){
  this.email = email
  this.posts = []
}

Author.prototype.createPost = function(post){
  post.setAuthor(this)
  this.post.push(post)
}


Author.prototype.getPost = function(){ return this.posts }


Author.prototype.findPostByTitle = function(title){

  var found = return this.posts.find(function(post){
      return post.title === title
   })

  // Exepciones
    if (!found) {
      // throw new Error('Post not found')
      throw new PostNotFoundError('Post not found')
    }

  return found

}


function Post(attrs){
  this.title = attrs.title
  this.content = attrs.content
  this.author = attrs.author
  this.comments = []
}


Post.prototype.setAuthor = function(author){
  this.author = author
}


Post.prototype.addComment = function(comment){
  this.comments.push(comment)
}


Post.prototype.getComment = function(comment){
  return this.comment
}


p1 = new Post({
  title: 'title 001',
  content: 'contenido 001'
})

p2 = new Post({
  title: 'title 002',
  content: 'contenido 002'
})


var author = new Author('ev@ev.co')
author.createPost(p1)
author.createPost(p2)

var comment1 = new Comment('23dssqqwqw')
var comment2 = new Comment('gwe23refds')

p1.addComment(comment1)
p2.addComment(comment2)

try{
  author.findPostByTitle('the lord of')
} catch(error){
  if (error instanceof PostNotFoundError) {
    console.log('MESSAGE: ', error.message)
    console.log('STACK: ', error.stack)
  }else{
    throw error
  }
}

// _object es privado con el '_'

// var comment = {
//   com1: {
//     titulo: 'Titulo1',
//     contenido: 'comentario 001',
//     autor: 'alberto'
//   },
//   com2: {
//     titulo: 'Titulo2',
//     contenido: 'comentario 002',
//     autor: 'monica'
//   },
//    com3: {
//     titulo: 'Titulo3',
//     contenido: 'comentario 003',
//     autor: 'alberto'
//   }
// };


// var post = {
//   post1: {
//     titulo: 'Post1',
//     contenido: 'Contenido del Post 001',
//     autor: 'alberto'
//   },
//   post2: {
//     titulo: 'Post2',
//     contenido: 'Contenido del Post 002',
//     autor: 'monica'
//   },
//    post3: {
//     titulo: 'Post3',
//     contenido: 'Contenido del Post 003',
//     autor: 'alberto'
//   }
// };


// var autor = {
//   auto1: 'alberto',
//   auto2: 'monica',
//   auto3: 'felipe'
// }


// var contenido = {
//   com = comment,
//   pos = post,
//   aut = autor,
//   mostrar: function(){
//     aut.forEach(function(a){
//       console.log(a)
//     })
//   }
// }








// Trabajando los this

var fullname = 'Jhon Doe';

var obj = {
  fullname: 'Colin Ihrig',
  prop: {
    fullname: 'Aurelio de Rosa',
    getFullname: function(){
      return this.fullname;
    }
  }
};

console.log(obj.prop.getFullname())





// Inicializar un objero
var comment = {
  title: '',
  conten: '',
  titleCapitalized: function(){
    return this.title.toUpperCase()
  }
}




Array.prototype.average = function(){
   var pro = 0
  this.map(function(value){
    pro += value
   })

  return pro / this.length
}





function User(name, email){
  this.name = name
  this.email = email

  // this.getName = function getName(){
  this.getName = function(){
    return this.name
  }
}



// Herencia
User.prototype.getEmail = function(){
  return this.email
}



// Operador ternario

true ? value : null

function suma($sum1 = 0, $sum2 = 0){
  return $sum1+$sum2;
}

function suma($sum1, $sum2){
  $s1 = sum1 || 0
  $s2 = sum2 || 0
  return s1+s2
}



// ------------------------------------------------------>



[1,2,3,4,5].forEach(function (value, index){
  console.log(index," - ",value)
})



printA = function (value, index){
  console.log(index," - ",value)
}

[1,2,3,4,5].forEach(printA)




// ------------------------------------------------------>



[1,2,3,4,5].map(function(value, index){
return value ** index
})


// ------------------------------------------------------>

// filter = select en ruby

[1,2,3,4,5].filter(function(value){
  return value%2 === 0
})


// ------------------------------------------------------>
// Si no esta el this todo es privado

function User(name,lastName){
  this.age = 24
  this.fullName = function (){
    return name + ' ' + lastName
  }
}


// ------------------------------------------------------>


































