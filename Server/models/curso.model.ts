import {Docente} from "./docente.model";

export interface Curso {
    titulo: string,
    color: "red" | "blue" | "brown",
    capacidad: number,
    horas_semanales: number,
    profesor?: Docente 
}