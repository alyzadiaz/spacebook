const api = "https://api.spacexdata.com/v3/missions/";
var ids = ["9D1B7E0","F4F83DE","F3364BF","EE86F74","6C42550","FE3533D","593B499","CE91D46","2CF444A","F7709F2"];

function insertMission(api){
    fetch(api)
        .then(response => response.json())
        .then(data => {
            var main = document.getElementById("here");
            var mission = document.createElement("div");
            mission.classList.add("mission");

            var title = document.createElement("div");
            title.classList.add("title");
            title.innerHTML = data.mission_name;

            var link = document.createElement("a");
            link.classList.add("a");
            var link_name = document.createTextNode("More Info");
            link.appendChild(link_name);
            
            link.onclick = function(){
                createDetails(
                    data.website,
                    data.description,
                    data.payload_ids,
                    data.manufacturers,
                    data.twitter,
                    data.wikipedia,
                    data.mission_id,
                    data.mission_name
                );
            }

            mission.append(title);
            mission.append(link);
            main.append(mission);
    });
}

function createDetails(web, desc, payload, manuf, twit, wiki, id, name){
    var test = window.open("../HTML/testing.html");
    
    var title = "<title>Mission</title>";
    var css = "<link rel=\"stylesheet\" type=\"text/css\" href=\"mission_detail.css\">"+
    "<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">";
    var font = "<link rel=\"preconnect\" href=\"https://fonts.gstatic.com\"> <link href=\"https://fonts.googleapis.com/css2?family=Space+Mono&display=swap\" rel=\"stylesheet\">";
    var search = "<div class=\"inside\"><input type=\"text\" placeholder=\"Search\"><button type=\"submit\"><i class=\"fa fa-search\"></i></button></div>";
    var nav = "<div><ul><li><a href=\"home.html\">Home</a></li><li><a href=\"mission.html\">Missions</a></li><li><a href=\"rockets.html\">Rockets</a></li><li><a href=\"https://www.spacex.com/launches/\"target=\"_blank\" rel=\"noopener noreferrer\">Live</a></li>"+search+"</ul></div>";
    

    var string = "";
    for(var i=0;i<payload.length;i++){
        string += ("<li>"+payload[i]+"</li>");
    }

    var body = 
    "<div>"+
        "<div id=\"info\">"+
            "<div id=\"profile\">"+
                "<h1>Mission Details</h1>"+
                "<div id=\"miss_link_box\"><a href=\""+web+"\" class=\"miss_link\"><span>"+name+"</span></a></div>"+
                "<h2 id=\"ID\">Mission ID: "+id+" </h2>"+
                "<img src="+findImage(name)+">"+
                "<div id=\"profile_body\">"+
                    "<div id=\"payloads\">"+
                        "<h2>Payloads</h2>"+
                        "<ol id=\"payloads_list\">"+string+"</ol>"+
                        "<h2><a href="+twit+" id=\"twitter\">Twitter</a></h2>"+
                    "</div>"+
                    "<div id=\"description\">"+
                        "<p id=\"details\">"+desc+"</p>"+
                    "</div>"+
                "</div>"+
            "</div>"+
            "</div>"+
        "</div>"+
    "</div>";

    var html = "<html><head>"+title+"</head>"+font+css+nav+"<body>"+body+"</body></html>";
    test.document.write(html);
    
}

function findImage(name){
    var res = "../RESOURCES/";

    switch(name){
        case "AsiaSat":
            res += "AsiaSat.jpg";
            break;
        case "ABS":
            res += "/ABS.jpg";
            break;
        case "Commercial Resupply Services":
            res += "CRS.jpg";
            break;
        case "Eutelsat":
            res += "Eutelsat.jpg";
            break;
        case "JCSAT":
            res += "JCSAT.jpg";
            break;
        case "Orbcomm OG2":
            res += "OG2.jpg";
            break;
        case "Iridium NEXT":
            res += "Iridium-Next-3.jpg";
            break;
        case "SES":
            res += "SES.png";
            break;
        case "Telstar":
            res += "Telstar.jpg";
            break;
        case "Thaicom":
            res += "Thaicom.jpg";
            break;

    }

    return res;
}

window.onload = function() {
    for(var i=0;i<ids.length;i++){
        insertMission(api.concat(ids[i]));
    }
}