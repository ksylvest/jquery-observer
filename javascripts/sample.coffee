$ ->
  $('#search').observe (form) ->
    $('#searches').append($("<div>#{$('#search .search').val()}</div>"))