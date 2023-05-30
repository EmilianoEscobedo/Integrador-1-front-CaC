let containerTotalPrice = document.getElementsByClassName("container__totalPrice");
let btnResumen = document.getElementsByClassName("btn-resumen");

let quantitySelect = document.getElementById("quantitySelect");
let categorySelect = document.getElementById("categorySelect");

let ticketPrice = document.getElementById("ticketPrice");
let totalPrice = document.getElementById("totalPrice");

quantitySelect.addEventListener("change",()=>{
    totalPrice.innerHTML = quantitySelect.value * ticketPrice.innerHTML;
}, false)

categorySelect.addEventListener("change",()=>{
    switch (categorySelect.value){
        case "Estudiante":
            ticketPrice.innerHTML = 40;
            totalPrice.innerHTML = quantitySelect.value * ticketPrice.innerHTML;
            break;
        case "Trainee":
            ticketPrice.innerHTML = 100;
            totalPrice.innerHTML = quantitySelect.value * ticketPrice.innerHTML;
            break;
        case "Junior":
            ticketPrice.innerHTML = 170;
            totalPrice.innerHTML = quantitySelect.value * ticketPrice.innerHTML;
            break;
    }
}, false)

btnResumen[0].addEventListener("click", () => {
    if (totalPrice.innerHTML != "") containerTotalPrice[0].classList.remove("displayNone");
    else alert("Por favor seleccione una cantidad de tickets y su categoría")
})