$(document).on 'change', '.js-task-checkbox', ->
  verb = if $(@).prop('checked') then 'POST' else 'DELETE'
  $.ajax
    type: verb
    url: $(@).data('url')
    dataType: 'script'
