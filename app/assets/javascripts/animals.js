$("document").ready(function() {

  $("#add_new_animal").on(
    "click",
    function() {
      // Data to be submitted
      new_animal = {
        "animal": {
          "common_name": $("#common_name").val(),
          "latin_name": $("#latin_name").val(),
          "kingdom": $("#kingdom").val(),
          "id": $("#animal_id").val()
        }
      }
      //Data returned from server
      $.ajax({
        dataType: 'json',
        url: '/animals',
        method: 'POST',
        data: new_animal,
        success: function(data) {
          addToAnimalList(data);
        },
        error: function(jqXHR, textStatus, errorThrown) {
          alert("Add new animal failed: " + errorThrown);
        }

      });// end ajax
  });// end add animal
  //function that will append new animal data to list
  function addToAnimalList(data) {
    $("#appendAnimal").append(
      '<td>' + data.common_name + '</td><td>' + data.latin_name + '</td><td>' + data.kingdom + '</td><td></td><td></td><td></td>');
    };

    //add sighting on animal show page
    $("#addNewSighting").on(
      "click",
      function() {
        // Data to be submitted
        new_sighting = {
          "sighting": {
            "date": $("#date").val(),
            "time": $("#time").val(),
            "latitude": $("#latitude").val(),
            "longitude": $("#longitude").val(),
            "region": $("#region option:selected").val(),
            "animal_id": $("#animal_id").val()
          }
        }
        alert("Sending message: " + JSON.stringify(new_sighting));

        $.ajax({
          dataType: 'json',
          url: '/sightings',
          method: 'POST',
          data: new_sighting,
          success: function(data) {
            alert("Received message: " + JSON.stringify(data));
            addToSightingList(data);
          },
          error: function(jqXHR, textStatus, errorThrown) {
            alert("Add new sighting failed: " + errorThrown);
          }

        });// end ajax
    });// end add sighting

    //add sighting on animal show page
    function addToSightingList(data) {
      $("#appendSighting").append(
        '<li>' + data.date + '</li><li>' + data.time + '</li><li>' + data.latitude + '</li><li>' + data.longitude + '</li><li>' + data.region + '</li>');
      };
}); // end document ready
