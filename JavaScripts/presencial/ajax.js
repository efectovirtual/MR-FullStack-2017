// http://fixer.io/

function callFixer(base,callback){

  // $.ajax({
  //   url: 'http://api.fixer.io/latest?base=' + base,
  //   method: 'GET'
  //   // dataType: 'json'
  // })

  $.ajax({
    url: 'http://api.fixer.io/latest',
    data:{  
      base: base
    },
    method: 'GET'
    // dataType: 'json'
  })
  .done(function (data,status,XHR){
    callback(null, data)
  })
  .fail(function (XHR,status,error){
    var errorMsg = JSON.parse(XHR.responseText).error
    callback(errorMsg, null)
  })
  

}

function paintTable(data){
  var tableData = Object.keys(data.rates).map(function(rateKey){
    var rateValue = data.rates[rateKey]
    var tdKey = '<td>' + rateKey + '</td>'
    var tdValue = '<td>' + rateValue + '</td>'
    return '<tr>' + tdKey + tdValue + '</tr>'
  }).join('')

  // Si ya existe
  if ($('tbody tr').length === 0) {
    $('tbody').append(tableData)
  }else{
    $('tbody').html(tableData)
  }
  $('tbody').append(tableData)
}

$(document).ready(function(){

$('form#currency-converter').on('submit', function (event){
  event.preventDefault()
  var base = $(this).find('input[name="base"]').val()
  callFixer(base, function (error, data){
    if (error){
      alert(error)
    }else{
      paintTable(data)
    }
  })
})

callFixer('USD',function(error,data){
    if (error){
      alert(error)
    }else{
      paintTable(data)
    }
})
  

});