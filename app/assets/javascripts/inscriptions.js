// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
// when a tableau is selected
  $('select#inscription_tableau').change(function() {
    // cache les 2 élements pour pouvoir faire simple - double et l'inverse sans refresh de la page
    $('#joueur1').hide();
    $('#joueur2').hide();
    // Value of tableau selected
    var tableau = $('select#inscription_tableau').val();
    if(tableau == "simple homme" || tableau == "simple dame"){
      $('#joueur1').show();
    } else {
      $('#joueur1').show();
      $('#joueur2').show();
    }
  });
})
