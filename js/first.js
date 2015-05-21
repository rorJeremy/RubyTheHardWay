// Using Javascript

// Iterate over the following hash (of people) and output all of their first names.

var people = [
  {
    first_name: "Tony",
    last_name: "Stark"
  },
  {
    first_name: "Michael",
    last_name: "Jordan"
  },
  {
    first_name: "William",
    last_name: "Henry"
  },
  {
    first_name: "George",
    last_name: "Washington"
  }
];

alert(people[0]["first_name"])
// console.log(people[0]["first_name"]);
for (x = 0; x < people.length; x++){
  console.log(people[x]["first_name"]);
}






