$(document).ready ->
  console.log 'hmmm'
  $('.datepicker').datepicker
    #"setDate": new Date(),
    "autoclose": true,
    "todayHighlight": true,
    "format": "M d"

  $('.datepicker').datepicker 'update', new Date()

  $("#add-test-button").click ->
    $(@).hide()
    $("#new_test_delivery").show()
