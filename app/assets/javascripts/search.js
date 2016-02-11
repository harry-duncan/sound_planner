// $(document).ready(function(){
//   var search = function(e){
//     e.preventDefault();

//     $.ajax({
//       url: "http://api.bandsintown.com/artists/skrillex/events.json?api_version=2.0&app_id=soundPlanner",
//       type: "GET",
//       dataType: "JSON",
//       app_id: "soundPlanner"
//       }).done(function(data){
//       console.log(data);
//     });
//   }
//   $(".searchForm").on("submit", search);
// });

// This is kinda fucked as failing the gem, api and ajax we are now going to start a party....  A HTTPARTY!!!!!!

$(document).ready(function(){
  $('.addCalendarButton').on('click', function(){
    $.ajax('/events', {
      type: 'POST',
      data: {
        event: {
          name: $(this).siblings(".venue").text(),
          date_time: $(this).siblings(".date").text(),
          venue: $(this).siblings(".city").text(),
          ticket_url: $(this).siblings(".ticketURL").text()
        }
      }
    }).done(function () {
      console.log("SUCCESS");
    });
  })
});