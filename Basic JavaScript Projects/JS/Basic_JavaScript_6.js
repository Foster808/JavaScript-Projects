function GO() {
    document.getElementById("Nested_Function").innerHTML = myFunction();
    function myFunction() {
        alert("Hello World!")
    }
}