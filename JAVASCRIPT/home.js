var formdata = new FormData();
var ids = [];

var requestOptions = {
  method: 'GET',
  redirect: 'follow'
};

getIds();

function getIds(){
    fetch("https://api.spacexdata.com/v3/missions")
    .then(response => response.json())
    .then(result => {
        for(var i=0;i<result.length;i++){
            ids.push(result[i].mission_id);
        }
    });
}

console.log(ids);