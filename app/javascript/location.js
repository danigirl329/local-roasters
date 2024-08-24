// app/javascript/location.js

function getLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(
        position => {
          const latitude = position.coords.latitude;
          const longitude = position.coords.longitude;
          
          // Send the location to the server
          fetch('/location', {
            method: 'POST',
            headers: {
              'Content-Type': 'application/json',
              'X-CSRF-Token': document.querySelector("meta[name='csrf-token']").content
            },
            body: JSON.stringify({
              latitude: latitude,
              longitude: longitude
            })
          })
          .then(response => response.json())
          .then(data => console.log('Location sent to the server:', data))
          .catch(error => console.error('Error sending location:', error));
        },
        error => {
          console.error('Error getting location:', error);
        }
      );
    } else {
      console.error('Geolocation is not supported by this browser.');
    }
  }
  
  // Call this function when you want to get the user's location
  getLocation();
  