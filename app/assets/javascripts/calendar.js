$(document).ready(function(){
//Jquery for calendar
  $("#calendar").fullCalendar({
    header: {
      left: "prev,next today",
      center: "title",
      right: "month,agendaWeek,agendaDay"
    },
    defaultView: "month",
    height: 500,
    slotMinutes: 15,
    events: "/sightings/get_events",
    timeFormat: "LT",
    dragOpacity: "0.5",
    eventColor: "#bdd684",
    eventClick: function(event) {
        if (event.url) {
          window.open(event.url);
          return false;
        }
      }
 });

});
