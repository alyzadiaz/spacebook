const api = "https://api.spacexdata.com/v3/rockets/";
const ids = ["falcon1","falcon9","falconheavy","starship"];

window.onload = function() {
    for(var i=0;i<ids.length;i++){
        insertRocket(api.concat(ids[i]));
    }


//search button
var searchBtn = document.getElementById("search_button");
var search = document.getElementById("search");

searchBtn.addEventListener("click", function(){
    var name = search.value;
    var goTo = document.getElementById(name);
    //goTo.scrollIntoView({ block: 'center' });
    
    highlight(goTo);
    
    function highlight(goTo){
       var orig = goTo.style.backgroundColor;
       goTo.style.backgroundColor = "blue";
       setTimeout(function(){
            goTo.style.backgroundColor = orig;
       }, 2500);
    }
});

}

function insertRocket(api){
    fetch(api)
        .then(response => response.json())
        .then(data =>{
            var main = document.getElementById("here");
            var rocket = document.createElement("div");
            rocket.classList.add("mission");
            rocket.classList.add("center");

            var title = document.createElement("div");
            title.classList.add("title");
            title.innerHTML = data.rocket_name;
            rocket.id = data.rocket_name;

            var img = document.createElement("img");
            img.classList.add("img");
            img.src = data.flickr_images[0];

            var status = document.createElement("div");
            status.classList.add("status");
            
            if(data.active==false){
                status.innerHTML = "INACTIVE";
            }else{
                status.innerHTML = "ACTIVE";
                status.classList.add("blink_me");
            }

            var country = document.createElement("div");
            country.innerHTML = data.country;

            var date = document.createElement("div");
            date.innerHTML = "First Launch: "+formatDate(data.first_flight);
            var cost = document.createElement("div");
            cost.innerHTML = "Cost per Launch: $"+formatNumber(data.cost_per_launch);

            var payload_table = document.createElement("table");
            payload_table.classList.add("table");
            var head = payload_table.createTHead();
            head.innerHTML = "Payloads";

            var payload_w = data.payload_weights;

            var row = head.insertRow(0);
            var id_col = row.insertCell(0);
            var name_col = row.insertCell(1);
            var weight_col = row.insertCell(2);
            id_col.innerHTML = "ID";
            name_col.innerHTML = "Name";
            weight_col.innerHTML = "Weight";
            
            for(var i=0;i<payload_w.length;i++){
                var next_row = head.insertRow(i+1);
    
                next_row.insertCell(0).innerHTML = payload_w[i].id;
                next_row.insertCell(1).innerHTML = payload_w[i].name;
                next_row.insertCell(2).innerHTML = formatNumber(payload_w[i].kg)+"kg / "+formatNumber(payload_w[i].lb)+"lbs";
            }

            rocket.append(title);
            rocket.append(img);
            rocket.append(status);
            rocket.append(country);
            rocket.append(date);
            rocket.append(cost);
            rocket.append(payload_table);
            main.append(rocket);
        })
}

function formatNumber(num) {
    return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, '$1,');
}

function formatDate(string){
    var components = string.split('-');

    switch(components[1]){
        case "01":
            components[1] = "January";
            break;
        case "02":
            components[1] = "February";
            break;
        case "03":
            components[1] = "March";
            break;
        case "04":
            components[1] = "April";
            break; 
        case "05":
            components[1] = "May";
            break;
        case "06":
            components[1] = "June";
            break;
        case "07":
            components[1] = "July";
            break;
        case "08":
            components[1] = "August";
            break;
        case "09":
            components[1] = "September";
            break;
        case "10":
            components[1] = "October";
            break;
        case "11":
            components[1] = "November";
            break;
        case "12":
            components[1] = "December";
            break;    
    }
    
    return components[1]+" "+components[2]+", "+components[0];
}