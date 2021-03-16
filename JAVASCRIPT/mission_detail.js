var missionList = [];

window.onload = function(){
    fetch("https://api.spacexdata.com/v3/missions/F3364BF")
    .then(response => response.json())
    .then(data => {
        missionList.push(data);
    
        //create HTML elements
        var main = document.getElementById('main');
        var mission = document.createElement('div');
        //mission.classList.add("mission");
        mission.setAttribute("id", data.mission_name);
        var name = document.createElement('div');
        //name.classList.add("name");

        //name of mission
        name.innerHTML = data.mission_name;

        mission.appendChild(name);
        document.getElementById('name').innerHTML= "Name: " + data.mission_name;
        document.getElementById('ID').innerHTML= "Mission ID: " + data.mission_id;
        document.getElementById('payloads').innerHTML= "Payload IDs: " + data.payload_ids;
        document.getElementById('description').innerHTML= "Description: " + data.description;
        document.getElementById('twitter').innerHTML= "Twitter Link: " + data.twitter;


    });
}