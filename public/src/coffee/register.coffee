$(document).ready ->
  addVerify = =>
    $('.verifyCode').fadeIn(300)

  $('#signup').submit (e) ->
    e.preventDefault()
    $.ajax
      type: "POST",
      url: '/register',
      data: $('#signup').serialize(),
      success: addVerify(),
    return false

  $('.codeSubmit').click (e) ->
    e.preventDefault()
    data =
      'phone_number': $('input[name="phone_number"]').val()
      'code': $('input[name="code"]').val()
    $.ajax
      type: "POST",
      url: '/verify',
      data: data,
      success: =>
        $('.status .alert-box').hide()
        $('.success').fadeIn(300)
        setTimeout =>
          document.location = '/success'
        , 1000
      ,
      error: =>
        $('.status .alert-box').hide()
        $('.error').fadeIn(300)
    return false