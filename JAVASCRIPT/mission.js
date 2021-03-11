//get all mission api
//const apiurl = 'https://api.spacexdata.com/v3/missions';

//get one mission api
const apiurl = "https://api.spacexdata.com/v3/missions/F4F83DE";
var missionList = [];
var myMission;

//change counter var, set it to 1 for now since we are only doing 1 mission as a demo
for(var i = 1;i<=1;i++){
    var api = apiurl.concat(i);
    insertMission(api);
}

window.onload = function() {

    document.getElementById("all-button").addEventListener("click", function(){
        document.getElementById("push").innerHTML="";
        for(var i=1;i<=1;i++){
            insertMission(apiurl.concat(i));
        }
    });

    //add function later
    /*var searchBtn = document.getElementById("search_button");
    var search = document.getElementById("search");

    searchBtn.addEventListener("click", function(){
        document.getElementById("here").innerHTML="";
        for(var i=0;i<80;i++){
            if(fishList[i].name["name-USen"].includes(search.value.toLowerCase())){
                insertFish(apiurl.concat(fishList[i].id));
            }
        }
    }); */
}

function insertMission(api){
    fetch(api)
    .then(res => res.json())
    .then(data => {
        missionList.push(data);

    var main = document.getElementById("here");
    var mission = document.createElement("div");
    mission.classList.add("mission");

    var name = document.createElement("div");
    name.classList.add("mission_name");
    //name.innerHTML = data.name["name-USen"];

    mission.appendChild(name);

    document.getElementById("here").appendChild(mission);

        name.onclick = function() {
        document.getElementById("name") = "Name: " + data.name;
        document.getElementById("name").classList.add("name");
    }
    })}
