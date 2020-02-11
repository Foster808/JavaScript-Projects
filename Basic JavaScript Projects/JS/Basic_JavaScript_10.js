let animal = {
    species: "Dog ",
    breed: "Olde English Bulldogge, ",
    age: "3 yr old, ",
    weight: "59 lbs, ",
    sex: "female, ",
    description:  function() {
        return "The animal is a " + this.age + this.weight + this.breed + this.sex + this.species;
    }
};
document.getElementById("Animal_Object").innerHTML = animal.description();