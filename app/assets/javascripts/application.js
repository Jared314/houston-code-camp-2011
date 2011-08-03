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

// $().ready(function() {
//    $("div.draggablesessionblock").draggable({
//     appendTo: "body",
//     cursor: 'move',
//     snap: $(".ui-droppable"),
//     revert: "invalid",
//     refreshPositions: true
//   });  
//   
//   $("div.slot").droppable({
//     accept: 'div.draggablesessionblock',
//     activeClass: 'dropactive',
//     hoverClass: 'drophover',
//     tolerance: 'pointer',
//     drop: function( event, ui ) {
//       draggable = $("#" + ui.draggable[0].id);
//       dropTarget = $(this);
//       $().trigger('sessionSlotted');
//       $.ajax({
//         type: "post",
//         url: "/session/assign",
//         data: {
//           id:  $(ui.draggable)[0].id, 
//           key: $(event.target)[0].id,
//           authenticity_token: window._token
//         },
//         success: function(e) {  
//             $(ui.draggable[0]).css("float:none;");
//           },
//         error:   function(e) { alert('error'); }
//       });
//     }
//   });
// 
//   $("body").droppable({
//     accept: 'div.draggablesessionblock',
//     tolerance: 'pointer',
//   });
//   
//   $(".unslotted-sessions").draggable({
//     appendTo: "body",
//     cursor: 'move',
//     helper: "original"
//   });
// 
// });