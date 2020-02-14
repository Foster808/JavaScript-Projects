function Island_Function() {
    var Island_Output;
    var Islands = document.getElementById("Island_Input").value;
    var Island_String = " is a great island!";
    switch(Islands) {
        case "Oahu":
            Island_Output = "Oahu" + Island_String;
        break;
        case "Maui":
            Island_Output = "Maui" + Island_String;
        break;
        case "Hawaii":
            Island_Output = "Hawaii" + Island_String;
        break;
        case "Molokai":
            Island_Output = "Molokai" + Island_String;
        break;
        case "Lanai":
            Island_Output = "Lanai" + Island_String;
        break;
        case "Niihau":
            Island_Output = "Niihau" + Island_String;
        break;
        case "Kahoolawe":
            Island_Output = "Kahoolawe" + Island_String;
        break;
        default:
            Island_Output = "Please enter an Island exactly as written on above list.";
    }
    document.getElementById("Output").innerHTML = Island_Output;
}