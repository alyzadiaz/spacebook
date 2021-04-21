///////////////////////////////////////////////////////////////////////////////
//                   
// Title:       Spacebook
// Files:       roadster_detail.html, mission_detail.css
// Semester:    Software Engineering - Spring 2021
//
// Author:      Danielle Shackley, Alyza Diaz Rodriguez
// Email:       shackleyd@wit.edu, diazrodrigueza@wit.edu
//
////////////////////////////////////////////////////////////////////////////

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
        document.getElementById('date').innerHTML= "Launch Date: " + formatDate(data.launch_date_utc);
        document.getElementById('details').innerHTML= data.details;
        document.getElementById('launch_mass').innerHTML= "Launch mass (lbs): " + data.launch_mass_lbs;
        document.getElementById('orbit_type').innerHTML= "Orbit type: " + data.orbit_type;
        document.getElementById('period_days').innerHTML= "Period days: " + data.period_days;
        document.getElementById('speed').innerHTML= "Speed (mph): " + data.speed_mph; 
              
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