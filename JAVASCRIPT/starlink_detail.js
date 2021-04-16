///////////////////////////////////////////////////////////////////////////////
//                   
// Title:       Spacebook
// Files:       starlink_detail.html, mission_detail.css
// Semester:    Software Engineering - Spring 2021
//
// Author:      Danielle Shackley, Alyza Diaz Rodriguez
// Email:       shackleyd@wit.edu, diazrodrigueza@wit.edu
//
////////////////////////////////////////////////////////////////////////////

var roadsterinfo = [];

window.onload = function(){
    fetch("https://api.spacexdata.com/v3/launches/109")
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
        document.getElementById('flight_number').innerHTML= "Flight No. " + data.flight_number;
        document.getElementById('name').innerHTML= "Mission name: " + data.mission_name;
        document.getElementById('date').innerHTML= "Launch date: " + formatDate(data.launch_date_utc);
        document.getElementById('rocket').innerHTML= "Rocket name: " + data.rocket.rocket_name;
        document.getElementById('payload_type').innerHTML= "Payload type: " + data.rocket.second_stage.payloads[0].payload_type;
        document.getElementById('payload_weight').innerHTML= "Payload weight (lbs): " + data.rocket.second_stage.payloads[0].payload_mass_lbs;
        document.getElementById('regime').innerHTML= "Orbital regime: " + data.rocket.second_stage.payloads[0].orbit_params.regime;
        document.getElementById('eccentricity').innerHTML= "Orbital eccentricity: " + data.rocket.second_stage.payloads[0].orbit_params.eccentricity;
        document.getElementById('reused').innerHTML= "Reused: " + data.rocket.fairings.reused;
        document.getElementById('recov_attempt').innerHTML= "Recovery attempt: " + data.rocket.fairings.recovery_attempt;
        document.getElementById('launch_site').innerHTML= data.launch_site.site_name_long;
    });
}

function formatDate(date){
    const utc = new Date(date);

    var day = utc.getUTCDate();
    var month = utc.getUTCMonth();
    var year = utc.getUTCFullYear();

    switch(month){
        case 0:
            month = "January";
            break;
        case 1:
            month = "February";
            break;
        case 2:
            month = "March";
            break;
        case 3:
            month = "April";
            break; 
        case 4:
            month = "May";
            break;
        case 5:
            month = "June";
            break;
        case 6:
            month = "July";
            break;
        case 7:
            month = "August";
            break;
        case 8:
            month = "September";
            break;
        case 9:
            month = "October";
            break;
        case 10:
            month = "November";
            break;
        case 11:
            month = "December";
            break;    
    }

    return (month+" "+day+", "+year);
}