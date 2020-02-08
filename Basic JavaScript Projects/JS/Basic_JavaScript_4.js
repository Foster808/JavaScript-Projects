function myDictionary() {
    var Car = {
        Make:"Toyota",
        Model:"Tundra",
        Upgrades:"V8",
        Make:"0-60mph in 4.4sec",
        Offroad:"Yes!"
    };
    delete Car.Make;
    document.getElementById("Dictionary").innerHTML=Car.Make;
}