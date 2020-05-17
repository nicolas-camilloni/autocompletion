$( function() {

 // Single Select
 $("#recherche").autocomplete({
  source: function(request,response) {
   // Fetch data
   $.ajax({
    url: "auto.php",
    type: 'post',
    dataType: "json",
    data: {
     search: request.term
    },
    success: function(data) {
     response(data);
     console.log(data);
    }
   });
  },
  select: function (event,ui) {
   // Set selection
   $('#recherche').val(ui.item.label); // display the selected text
   return false;
  }
 });
});