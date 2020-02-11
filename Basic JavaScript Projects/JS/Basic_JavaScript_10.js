var text = "";
var i;
for (i = 20; i < 40; i++) {
    if (i === 25) { continue; }
    text += "The number is " + i + "<br>";
}
document.getElementById("count").innerHTML = text;