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
        document.getElementById('name').innerHTML= data.mission_name;
        document.getElementById('ID').innerHTML= "Mission ID: " + data.mission_id;


        var payload_list = JSON.stringify(data.payload_ids);
        payload_list = JSON.parse(payload_list);

        var ol = document.getElementById("payloads_list")
        for(var i=0;i<payload_list.length;i++){
            var payload = payload_list[i];
            var li = document.createElement('li');
            li.appendChild(document.createTextNode(payload));
            ol.appendChild(li);
        }

        //document.getElementById('payloads').innerHTML= data.payload_ids;
        document.getElementById('details').innerHTML= data.description;
        document.getElementById('twitter').innerHTML= "Twitter Link: " + data.twitter;
    });
}