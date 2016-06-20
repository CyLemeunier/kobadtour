$(document).ready(function() {
// when a tableau is selected
  $('#select_tableau').change(function() {
    // cache les 5 élements
    $('#simplehomme').hide();
    $('#simpledame').hide();
    $('#doublehomme').hide();
    $('#doubledame').hide();
    $('#doublemixte').hide();
    // Value of tableau selected
    var tableau = $('#select_tableau').val();

    if(tableau == "simple homme"){
      $('#simplehomme').show();
    } else if (tableau == "simple dame") {
      $('#simpledame').show();
    } else if (tableau == "double homme") {
      $('#doublehomme').show();
    } else if (tableau == "double dame") {
      $('#doubledame').show();
    } else if (tableau == "double mixte") {
      $('#doublemixte').show();
    } else {
      $('#simplehomme').hide();
      $('#simpledame').hide();
      $('#doublehomme').hide();
      $('#doubledame').hide();
      $('#doublemixte').hide();
    }
  });
})
