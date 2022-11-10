import { Socie } from "./models/socie.model";
// 1. Select the div element using the id property
const app = document.getElementById("app");
const table = document.getElementById("socies-table");
let socies: Array<Socie>=[   
];


fetch("http://localhost:5000/socies")
.then(resp => {
        resp.json()
        .then (data => {
            data.socies.forEach((socie:Socie) => {
                let tr = document.createElement("tr");
                //link
                let link = document.createElement("a");
                link.href = "http://localhost:5000/socie/"+ socie.nick
                link.innerText = socie.nombre;
                //td
                let td_nombre = document.createElement("td");
                td_nombre.appendChild(link)

                let td_apellido = document.createElement("td");
                td_apellido.textContent = socie.apellido;
                
                let td_nick = document.createElement("td");
                td_nick.textContent = socie.nick;

                let td_edad = document.createElement("td");
                td_edad.textContent = socie.edad.toString(10);

                let td_button = document.createElement("button");
                td_button.textContent = "Mostrar";
                td_button.onclick = function() {
                    showSocie(socie)
                };

                tr?.appendChild(td_nombre);
                tr?.appendChild(td_apellido);
                tr?.appendChild(td_nick);
                tr?.appendChild(td_edad);
                tr?.appendChild(td_button);
                table?.appendChild(tr);
        });
    }) 
});                 

function showSocie (socie:Socie){
    fetch("http://localhost:5000/socie/"+socie.nick)
    .then(resp => {
        resp.json()
        .then (data => {
            let p = document.createElement("p");
            p.textContent = data.socie.nombre
            app?.appendChild(p);
        })
    });
}