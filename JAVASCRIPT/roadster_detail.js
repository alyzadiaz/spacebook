var roadsterinfo = [];

window.onload = function(){
    fetch("https://api.spacexdata.com/v3/roadster")
    .then(response => response.json())
    .then(data => {
        roadsterinfo.push(data);
    
        //create HTML elements
        var main = document.getElementById('main');
        var roadster = document.createElement('div');
        var name = document.createElement('div');

        //name of mission
        name.innerHTML = data.name;

        roadster.appendChild(name);
        document.getElementById('name').innerHTML= data.name;
        document.getElementById('date').innerHTML= "Launch Date: " + data.launch_date_utc;
        document.getElementById('details').innerHTML= data.details;
        document.getElementById('launch_mass').innerHTML= "Launch mass (lbs): " + data.launch_mass_lbs;
        document.getElementById('orbit_type').innerHTML= "Orbit type: " + data.orbit_type;
        document.getElementById('period_days').innerHTML= "Period days: " + data.period_days;
        document.getElementById('speed').innerHTML= "Speed (mph): " + data.speed_mph;        
    });
}