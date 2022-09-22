import { Curso } from "../models/curso.model";
import * as D from './docentes.data';

export const cursos: Array<Curso> = [
    {
        titulo: "Introduccion a la programación",
        color: "blue",
        capacidad: 20,
        horas_semanales: 12,
        profesor: D.docentes[1]
    },
    {
        titulo: "Introduccion al diseña",
        color: "red",
        capacidad: 20,
        horas_semanales: 12,
        profesor: D.docentes[2]
    },
    {
        titulo: "Fotografia",
        color: "brown",
        capacidad: 10,
        horas_semanales: 12,
        profesor: D.docentes[3]
    },
];