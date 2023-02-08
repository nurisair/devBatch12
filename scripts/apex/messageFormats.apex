GetUsersCallout.getUsers();

HttpResponse response = CovidInfoCallout.getCovidInfo();

RestCallouts.postAnimals();
RestCallouts.getEmployees();
RestCallouts.getAirlines();

RestCallouts.getAnimals();


//JSON: JavaScript Object Notation

{
    "Name" : "Nuri",
    "Age" : 99,
    "Title" : "Freelancer",
    "Salary": 5000
}

//2 student detail in JSON fromat

[
    {
        "Name" : "Ali",
        "Age" : 9,
        "Title" : "Freelancer",
        "Salary": 25000
    },
    {
        "Name" : "Nuri",
        "Age" : 99,
        "Title" : "Freelancer",
        "Salary": 5000
    }
]

list<contact> toJson = [SELECT Name, email, phone, title FROM Contact WHERE email!=null AND title!=null LIMIT 4];
String vJson=JSON.serialize(toJson);
system.debug(vJson);
