function UserPosts(){

  $('.create-new-post').on('ajax:success', function(event, hxr){
    var content = xhr.responseText
  $('.new-form').append(content)
  })

}