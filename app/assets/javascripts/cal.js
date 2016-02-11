$(document).ready(function() {

  $('#calendar').fullCalendar({
      events: [
          {
              title: 'My Event',
              start: '2016-02-02',
              description: 'This is a cool event'
          }
          // more events here
      ],
      eventRender: function(event, element) {
          element.qtip({
              content: event.description
          });
      }
  });
});

