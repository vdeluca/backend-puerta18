export class Tutor {
    public nombre : string;
    public apellido : string;
    public vinculo : string;
    public telefono : string;
    public documento : string;
    public edad : string;

    constructor(nombre:string, apellido:string, vinculo:string, telefono:string, documento: string, edad:string){
        this.nombre = nombre;
        this.apellido = apellido;
        this.vinculo = vinculo;
        this.telefono = telefono;
        this.documento = documento;
        this.edad = edad;        
    }
}

export class Socie {
    public nombre : string;
    public apellido : string;
    public documento : string;


    public tutor? = Tutor;

    public constructor(nombre:string, apellido:string, fechaDeNacimiento:string, documento:string, pronombre:string, escuela:string, carrera:string, telefono:string, redes:string, email:string){
        this.nombre = nombre;
        this.apellido = apellido;
        this.documento = documento;
    }
}
