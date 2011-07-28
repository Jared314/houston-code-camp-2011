// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require_tree .

$().ready(function() {
   $("div.draggablesession").draggable({
    appendTo: "body",
    cursor: 'move',
    helper: "original"
  });

  $("div.slot").droppable({
    activeClass: 'dropactive',
    hoverClass: 'drophover',
    tolerance: 'pointer',
    drop: function( event, ui ) {
      //$( this ).find( ".placeholder" ).remove();
      // $( "<div class=\"session\"></div>" ).html( ui.draggable.html() ).appendTo( this );
      $().trigger('sessionSlotted');
      $.post(
        '/session/assign',
        {
          id:  $(ui.draggable)[0].id, key: $(event.target)[0].id
          // id: $('.ui-draggable-dragging')[0].id,
          // slot_key: $('.slot').id
        }
        // callback: function() {
          
        // });
    
      );
    }
  });
});