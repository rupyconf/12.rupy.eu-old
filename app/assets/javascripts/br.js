//= require jquery
//= require jquery_ujs
//= require bootstrap.min
//= require dispatcher

App.br_inscriptions = {};

App.br_inscriptions["new"] = function() {
  refresh_cities = function() {
    $('#br_inscription_city_id').empty();
    $('#br_inscription_city_id').append('<option value></option>');
    $.getJSON("/br/cities/" + $('#br_inscription_state_id').val(), function(data) {
      $.each(data, function(i, city){
        selected = city.id == $('#br_inscription_city_id').data("current") ? 'selected="selected"' : '';
        $('#br_inscription_city_id').append('<option value="' + city.id + '"' + selected + '>' + city.name + '</option>');
      });
    });
  };

  if ($('#br_inscription_state_id').val() !== "") {
    refresh_cities();
  };

  $('#br_inscription_state_id').change(function(){
    refresh_cities();
  });
};
