# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $(".draggablesessionblock").draggable({
    appendTo: "body",
    cursor:   "move"
    snap:     $(".ui-droppable"),
    revert:   "invalid"
  })
  
  $(".slot").droppable({
    accept:       ".draggablesessionblock",
    activeClass:  "dropactive",
    hoverClass:   "drophover",
    tolerance:    "pointer",
    drop: (event, ui) -> 
      source = $(ui.draggable)[0]
      target = event.target
      $().trigger("sessionSlotted")
      $.ajax({
        type: "post",
        url:  "/session/assign",
        data: {
          id:   source.id,
          key:  event.target.id,
          authenticity_token: window._token
        },
        success: (response) -> 
          if response.success == "true"
            $(source).css("background-color", '#f00').remove()
            $(target).append(source)
            $(source).css({ left:0, top:0, float:"none", position:"inherit" })
            $(source).animate({ backgroundColor:"#eee"}, 500, 'swing')
            
            #$(target).append(source).css("float", "none")
          else
            alert("Whoops! " + response.message)
        error: (err) -> 
          alert("An error occurred. " + err)
      })
  })