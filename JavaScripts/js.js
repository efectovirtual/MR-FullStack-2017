 // Plantillas

function template(cad,obj){

	var variables = [],
		rx = /\[([^\]]+)]/g,
		m,
		textofinal

	while ((m = rx.exec(cad)) !== null) {
		namev = m[1]
    	// variables.push(namev)
    	// variables.push(obj[namev])
		textofinal = cad.replace("[" + m[1] + "]", obj[namev]);
		cad = textofinal
	}

	if (rx.exec(cad) == null) {
		textofinal = cad
	}

	console.log("Se encontró:", variables);
	console.log("El texto final es:", textofinal);

}


template("Hola [nombre]", { nombre: "German" }); // => "Hola German"
template("Hola [nombre], tu saldo es [saldo]", { nombre: "German", saldo: 12000 }); // => "Hola German, tu saldo es 12000"
template("Hola mundo", {}) // => "Hola mundo"




// Mejor Solución

function template(str, data) {
  var regexp = /\[(.*?)\]/g;
  var vars = [];

  // obtenemos las variables del texto
  var matches = regexp.exec(str);
  while (matches) {
    vars.push(matches[1]);
    matches = regexp.exec(str);
  }

  // reemplazamos las variables con los valores que vienen en el objeto
  for (var i=0; i < vars.length; i++) {
    str = str.replace("[" + vars[i] + "]", data[vars[i]]);
  }

  return str;
}




 // Busca las placas  -------------------------------------------------------------------------------------

 function plates(cad){

  if(/[A-Z]{3}\d{3}/.test(cad)==true){
    return cad.match(/[A-Z]{3}\d{3}/gi);
  }else{
    return []
  }
}


plates("AAA123"); // => ["AAA123"]
plates("Iba en un AAA123 y después en un BBB987"); //=> ["AAA123", "BBB987"]
plates("no coincide"); // => []


// Mejor forma
function plates(str) {
  var matches = str.match(/[A-Z]{3}\d{3}/g);
  return matches ? matches : [];
}


//  Objetos literales   -------------------------------------------------------------------------------------

var pepito = {
  nombre: "Pepito"
}
var german ={
  nombre: "German"
}
var hijos ={
  german: german
}

var maria = {
  nombre: "Terah",
  edad: 32,
  altura: 1.70,
  peso: 60,
  colorPelo: "cafe",
  esposo: pepito,
  hijos: hijos,
  bmi: function(){
    return this.peso/(this.altura*this.altura);
  }
}





// Partir la cadena  -------------------------------------------------------------------------------------

function split(str){
	return str.split(/[\+\-\*]/);
}





//  Máximos y mínimos         -------------------------------------------------------------------------------------

function isPlate(cad){
	if (cad.match(/[A-Z]{3}\d{3}/)) {return true}else{return false}
}

// Mejor forma
function isPlate(str) {
  return /[A-Z]{3}\d{3}/.test(str);
}



//  Máximos y mínimos         -------------------------------------------------------------------------------------

function maximo(){
  return Math.max.apply(null, arguments);
}

function minimo(){
	return Math.min.apply(null, arguments);
}

function maximo(){
return Math.max.apply(Math,arguments);
}

function minimo(){
return Math.min.apply(Math, arguments);
}


// Herecia        -------------------------------------------------------------------------------------
function Car() {
  this.velocity = 0;
}
Car.prototype.accelerate = function(amount) {
  this.velocity += amount || 1;
  return this;
}
Car.prototype.break = function(amount) {
  this.velocity -= amount || 1;
  return this;
}


// La mejor forma de hacerlo
function Bus() {
  Car.call(this);
}
Bus.prototype = new Car();

Bus.prototype.beep = function() {
 return "BEEP!"
};

// https://www.youtube.com/watch?v=uKz30sRuKS4





// Prototipos        -------------------------------------------------------------------------------------

function Square(width, height){
	this.width = width;
	this.height = height;
	this.calculateArea = function(){
		return this.width * this.height;
	}
}


// Otra forma


var Square = function(width, height) {
  this.width = width;
  this.height = height;
};

Square.prototype.calculateArea = function() {
  return this.width * this.height;
};


// Función Constructora       -------------------------------------------------------------------------------------

function User(name,email){
	this.name = name;
	this.email = email;
}

var user = new User("Juan", "juan@makeitreal.camp");

user.name => "Juan";
user.email => "juan@makeitreal.camp";

// Retornando una función      -------------------------------------------------------------------------------------

function counter(){
	var count=0;
	return function(){
		return ++count;
	}
}



//   Aplanando un arreglo     -------------------------------------------------------------------------------------

function flatten(arr){
	vf = [];
	for(i=0;i<arr.length;i++){
		if (arr[i] instanceof Array) {vf = vf.concat(arr[i])}
	}
    return vf;
}



//  Componiendo funciones    -------------------------------------------------------------------------------------
function order(arr,reverse){
	var vec = [];
    vec = arr.sort(function(a, b) {return a - b;});
	if (reverse) {
		vec = arr.reverse();
	}
	return vec;
}

// otra forma
function order(arr, reverse) {
  return arr.sort(function(a, b) {
    return reverse ? b - a : a - b
  });
}

// https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/sort





//  Componiendo funciones    -------------------------------------------------------------------------------------

function compose(f1,f2){
	return f2(f1())
}


// Filtrando un arreglo   -------------------------------------------------------------------------------------

function filter(vec,fun){
	arr = [];
	punt = 0;
	for(var i=0;i<vec.length;i++){
		if (fun(vec[i])) {
			arr[punt]=vec[i];
            punt++;
		}
	}
	return arr;
}




// Pasar Funcion Como Parametro  -------------------------------------------------------------------------------------

function transform(vec,fun){
	for(i=0;i<vec.length;i++){
		vec[i] = fun(vec[i]);
	}
	return vec
}

var duplicate = function(i) { return i * 2; };
var increase = function(i) { return i + 10; };

transform([1, 2, 3], duplicate) // => [2, 4, 6]
transform([1, 2, 3], increase) // => [11, 12, 13]





// Promediame -------------------------------------------------------------------------------------
function promediame(vec){
	var pro = 0;
	for(i=0;i<vec.length;i++){
		pro += vec[i];
	}
  if (vec.length > 0){
    return pro / vec.length
  }else{ return 0}

}




// súmame -------------------------------------------------------------------------------------

function sumame(vec){
  var sum = 0
	for(i=0;i<vec.length;i++){
		sum += vec[i];
	}
	return sum;
}

// En una sola línea
for (var i = 0, sum = 0; i < nums.length; sum += nums[i++]);



// Factorial -------------------------------------------------------------------------------------

function factorial(num){
  var res = 1
  if (num > 1) {
		for(var i=1; i<=num; i++){
			res = res * i
		}
	return res
	}else{
		return 1
	}
}





// Ajustando texto -------------------------------------------------------------------------------------


function adjustText(cas, num){
	if (cas.length < num) {
		for(var i = cas.length; i < num; i++){
			cas += " ";
		}
		return cas;
	}else{
		return cas.slice(0,num);
	}
}



// fizzBuzz -------------------------------------------------------------------------------------


function fizzBuzz(num){
	if(num%3 == 0 && num%5 == 0){
		return "fizzbuzz";
	}else if(num%3 == 0){
		return "fizz";
	}else if (num%5 == 0){
		return "buzz";
	}else{
      return num;
    }
}



// Un Poco de lógica -------------------------------------------------------------------------------------

function isAlive($playerName, $points){
	if (($playerName == "ikk" && $points > 30) || ($playerName == "gut" && $points > 10)) {return true}else{return false}
}

// Otra forma
function isAlive(playerName, points) {
  return (playerName === "ikk" && points > 30) || (playerName === "gut" && points > 10)
}
