$('.triggerNotify').click (e) ->
    $(e.currentTarget).text('Sending...')
    $.ajax
      type: "GET",
      url: '/notify_all',
      success: =>
        $(e.currentTarget).text('Success!')