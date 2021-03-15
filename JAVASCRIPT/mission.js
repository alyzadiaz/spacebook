
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

    var missionList = [];
    
    window.onload = function(){
        fetch('https://api.spacexdata.com/v3/missions/F3364BF')
        .then(data => {
            missionList.push(data);
        
            //create HTML elements
            var main = document.getElementById('main');
            var mission = document.createElement('div');
            mission.classList.add("mission");
            mission.setAttribute("id", data.mission_name);
            var name = document.createElement('div');
            name.classList.add("name");

            //name of mission
            name.textContent = data.mission_name;

            mission.appendChild(name);
            document.getElementById('name').textContent= "Name: " + data.mission_name;


        });
    }