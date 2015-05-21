var api = "http://jsonplaceholder.typicode.com/posts";
var titles = [];
// $.ajax({
//   url: api,
//   datatype: 'json',
//   method: 'GET'
// }).then(function(data) {
//   console.log(data[3].title);
// });
//////////////////////////////////////////////////////////////////////////

// function getData(){

//   $.ajax({
//     url: api,
//     datatype: 'json',
//     method: 'GET',
//     success: saveAllTitles,
//     error: function() {
//       alert("There was an error in the ajax call to the following api: " + api)
//     }
//   });

// }

// function saveAllTitles(data){
//   for(x = 0; x < data.length; x++){
//     titles.push(data[x].title);
//   }
//   alert(titles[0]);
// }

// getData();

//////////////////////////////////////////////////////////////////////////
// $.ajax({
//   async: false,
//   url: api,
//   datatype: 'json',
//   method: 'GET',
//   success: function(data) {
//     titles = data;
//   },
//   error: function() {
//     alert("There was an error in the ajax call to the following api: " + api)
//   }
// });

// function saveAllTitles(data){
  // for(x = 0; x < data.length; x++){
  //   titles.push(data[x].title);
  // }
// }

function getData(callback) {
  jQuery.ajax({
    url: api,
    cache: false,
    dataType: "json",
    success: function(data) {
      callback(data);
    }
  });
}

function doStuffWithData(data) {

  for(x = 0; x < data.length; x++){
    titles.push(data[x].title);
  }

  alert("The title of the third resource is: " + data[3].title);
  document.getElementById("students").innerHTML = titles;
}

getData(doStuffWithData);

// alert(titles[0]);